/*
 * Macro fro substracting the background, thresholds and measures 
 * the area fraction
 * 2019-10-09: created aac
 */


//load data
run("Cell Colony (31K)");

//subtract background 
run("Subtract Background...", "rolling=100 light sliding");
run("Close");

//Threshold 

setAutoThreshold("Otsu");
setOption("BlackBackground",true);
run("Convert to Mask");

//Measure

run("Set Measurements...", "area_fraction display redirect=None decimal=3");
run("Analyze Particles...", "summarize");
