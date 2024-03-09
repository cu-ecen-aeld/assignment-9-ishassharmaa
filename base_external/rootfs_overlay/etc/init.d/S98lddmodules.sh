#!/bin/sh
#reference aesdosocket-start-stop

case "$1" in
    start)
        echo "LDD loading.."
	#startup to load the scull driver, faulty driver, modprobe hello
	scull_load
        module_load faulty
        modprobe hello
        ;;
    stop)
        echo "LDD unloading.."
	#shutdown to unload the scull driver, faulty driver, rmmod hello
	scull_unload
        module_unload faulty
        rmmod hello
        ;;
    *)
        echo "Usage: $0 {start|stop}"
    exit 1
esac

exit 0
