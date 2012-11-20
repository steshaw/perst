#!/bin/bash

mkdir -p classes
javac -d classes -Xlint:all org/garret/perst/*.java org/garret/perst/impl/*.java org/garret/perst/impl/sun14/*.java
(
  cd classes; 
  jar cvf ../../lib/perst15.jar org/garret/perst/*.class org/garret/perst/impl/*.class org/garret/perst/impl/sun14/*.class
)
