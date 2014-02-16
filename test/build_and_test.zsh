build_id=build-$1

sudo prepare_iso/prepare_iso.sh "/Applications/Install OS X Mavericks.app" build/$build_id


node test/write_template.js $build_id

pushd build/$build_id
packer build template.json
vagrant box add $build_id packer_vmware-iso_vmware.box
popd

cd test
rm -rf Vagrantfile
vagrant init $build_id
vagrant up

