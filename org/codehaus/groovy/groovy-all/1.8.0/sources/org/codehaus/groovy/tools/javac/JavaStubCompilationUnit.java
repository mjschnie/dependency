/*
 * Copyright (C) 2006-2007 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.codehaus.groovy.tools.javac;

import groovy.lang.GroovyClassLoader;
import org.codehaus.groovy.ast.ClassNode;
import org.codehaus.groovy.classgen.GeneratorContext;
import org.codehaus.groovy.control.CompilationFailedException;
import org.codehaus.groovy.control.CompilationUnit;
import org.codehaus.groovy.control.CompilerConfiguration;
import org.codehaus.groovy.control.Phases;
import org.codehaus.groovy.control.SourceUnit;

import java.io.File;
import java.io.FileNotFoundException;
import java.net.URL;
import java.util.Map;

/**
 * Compilation unit to only generate stubs.
 *
 * @author <a href="mailto:jason@planet57.com">Jason Dillon</a>
 */
public class JavaStubCompilationUnit
    extends CompilationUnit
{
    private static final String DOT_GROOVY = ".groovy";
    
    private final JavaStubGenerator stubGenerator;

    private int stubCount;

    public JavaStubCompilationUnit(final CompilerConfiguration config, final GroovyClassLoader gcl, File destDir) {
        super(config,null,gcl);
        assert config != null;

        Map options = config.getJointCompilationOptions();
        if (destDir == null) {
            destDir = (File) options.get("stubDir");
        }
        boolean useJava5 = config.getTargetBytecode().equals(CompilerConfiguration.POST_JDK5);
        stubGenerator = new JavaStubGenerator(destDir, false, useJava5);

        addPhaseOperation(new PrimaryClassNodeOperation() {
            @Override
            public void call(final SourceUnit source, final GeneratorContext context, final ClassNode node) throws CompilationFailedException {
                try {
                    stubGenerator.generateClass(node);
                    stubCount++;
                }
                catch (FileNotFoundException e) {
                    source.addException(e);
                }
            }
        },Phases.CONVERSION);
    }

    public JavaStubCompilationUnit(final CompilerConfiguration config, final GroovyClassLoader gcl) {
        this(config, gcl, null);
    }

    public int getStubCount() {
        return stubCount;
    }

    @Override
    public void compile() throws CompilationFailedException {
        stubCount = 0;
        super.compile(Phases.CONVERSION);
    }

    @Override
    public void configure(final CompilerConfiguration config) {
        super.configure(config);
        // GroovyClassLoader should be able to find classes compiled from java sources
        File targetDir = config.getTargetDirectory();
        if (targetDir != null) {
            final String classOutput = targetDir.getAbsolutePath();
            getClassLoader().addClasspath(classOutput);
        }
    }

    @Override
    public SourceUnit addSource(final File file) {
        if (file.getName().toLowerCase().endsWith(DOT_GROOVY)) {
            return super.addSource(file);
        }
        return null;
    }

    @Override
    public SourceUnit addSource(URL url) {
        if (url.getPath().toLowerCase().endsWith(DOT_GROOVY)) {
            return super.addSource(url);
        }
        return null;
    }

    @Deprecated
    public void addSourceFile(final File file) {
        addSource(file);
    }
}
