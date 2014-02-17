
var template = require('../packer/template.json');

var sys = require('sys')
var exec = require('child_process').exec;
// function puts(error, stdout, stderr) { sys.puts(stdout) }
function puts(error, stdout, stderr) { console.log(stdout.toString()) }

var build_id = process.argv[2];
exec("md5 -q build/" + build_id + "/OSX_InstallESD_10.9_13A603.dmg", function(error, stdout){
  var md5 = stdout.toString().trim();

  template['builders'][0]['iso_checksum'] = md5;
  template['builders'][0]['iso_url'] = "file:///Users/ryanhanks/Development/osx-ci-template/build/"+ build_id + "/OSX_InstallESD_10.9_13A603.dmg";

  var outputFilename = 'build/' + build_id + '/template.json';

  var fs = require('fs');
  fs.writeFile(outputFilename, JSON.stringify(template, null, 4), function(err) {
      if(err) {
        console.log(err);
      } else {
        console.log("Saved template to " + outputFilename);
      }
  }); 

});