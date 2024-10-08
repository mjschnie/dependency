/*
 * Copyright 2008 the original author or authors.
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

package groovy.lang;

import org.codehaus.groovy.transform.GroovyASTTransformationClass;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Class or field annotation used for turning off Groovy's auto property
 * conversion of default or package scoped fields. Place it on the field(s)
 * of interest or on the class to apply for all package-scoped fields.
 *
 * This transformation is normally only used in conjunction with a third-party
 * library or framework which already uses package scoping.
 *
 * @author Paul King
 */
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.TYPE, ElementType.FIELD})
@GroovyASTTransformationClass("org.codehaus.groovy.transform.PackageScopeASTTransformation")
public @interface PackageScope {
}