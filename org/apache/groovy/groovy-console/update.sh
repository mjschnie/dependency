export VER=4.0.0

cp -R $VER $VER-ffx

cd $VER-ffx

jar xvf groovy-console-$VER.jar

cp ../MacOSXMenuBar.groovy .

goovyc MacOSXMenuBar.groovy

jar cvf groovy-console-$VER-ffx.jar META-INF groovy

rm -rf META-INF groovy MacOSXMenuBar.groovy groovy-console-$VER.jar

mv groovy-console-$VER.pom groovy-console-$VER-ffx.pom

