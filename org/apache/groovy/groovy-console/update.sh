export VER=4.0.1

cp -R $VER $VER-ffx

cd $VER-ffx

jar xf groovy-console-$VER.jar
ls groovy/console/ui/view/MacOSXMenuBar*

cp ../MacOSXMenuBar.groovy .

groovyc MacOSXMenuBar.groovy

jar cf groovy-console-$VER-ffx.jar META-INF groovy

rm -rf META-INF groovy MacOSXMenuBar.groovy groovy-console-$VER.jar

mv groovy-console-$VER.pom groovy-console-$VER-ffx.pom

