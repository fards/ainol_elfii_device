ifeq ($(TARGET_PRODUCT),g06ref)
	
.PHONY: english
english:
	echo "begin copy init e2 english files...."
# custom patch file
	./device/amlogic/g06ref/english/english.sh
	cp  $(shell pwd)/device/amlogic/g06ref/english/default_workspace.xml $(shell pwd)/device/amlogic/g06ref/overlay/packages/apps/Launcher2/res/xml/

	echo "finish copy init custom1024 files. please build the project."	

endif
