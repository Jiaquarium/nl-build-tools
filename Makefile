ORG_ID            ?= ""
PRODUCT_ID        ?= ""
ARTIFACT_ID       ?= ""
CLIENT_ID         ?= ""
CLIENT_SECRET     ?= ""
BUILD_ROOT_WIN    ?= "./content_windows"
BUILD_ROOT_MAC    ?= "./content_mac"
CLOUD_DIR_WIN     ?= "./cloud_dir_windows"
CLOUD_DIR_MAC     ?= "./cloud_dir_mac"
VERSION           ?= ""
APP_LAUNCH_WIN    ?= "Night Loops.exe"
APP_LAUNCH_MAC    ?= "Night Loops.app/Contents/MacOS/Night Loops"

version:
	echo "1.5.1"

buildwindows:
	.\Engine\Binaries\Win64\BuildPatchTool.exe \
		-OrganizationId=$(ORG_ID) \
		-ProductId=$(PRODUCT_ID) \
		-ArtifactId=$(ARTIFACT_ID) \
		-ClientId=$(CLIENT_ID) \
		-ClientSecret=$(CLIENT_SECRET) \
		-mode="UploadBinary" \
		-BuildRoot=$(BUILD_ROOT_WIN) \
		-CloudDir=$(CLOUD_DIR_WIN) \
		-BuildVersion=$(VERSION) \
		-AppLaunch=$(APP_LAUNCH_WIN) \
		-AppArgs=""

buildmac:
	.\Engine\Binaries\Win64\BuildPatchTool.exe \
		-OrganizationId=$(ORG_ID) \
		-ProductId=$(PRODUCT_ID) \
		-ArtifactId=$(ARTIFACT_ID) \
		-ClientId=$(CLIENT_ID) \
		-ClientSecret=$(CLIENT_SECRET) \
		-mode="UploadBinary" \
		-BuildRoot=$(BUILD_ROOT_MAC) \
		-CloudDir=$(CLOUD_DIR_MAC) \
		-BuildVersion=$(VERSION) \
		-AppLaunch=$(APP_LAUNCH_MAC) \
		-AppArgs=""