ORG_ID        ?= ""
PRODUCT_ID    ?= ""
ARTIFACT_ID   ?= ""
CLIENT_ID     ?= ""
CLIENT_SECRET ?= ""
BUILD_ROOT    ?= "./content_windows"
CLOUD_DIR     ?= "./cloud_dir"
VERSION       ?= ""
APP_LAUNCH    ?= "Night Loops.exe"

version:
	echo "1.5.1"

build:
	.\Engine\Binaries\Win64\BuildPatchTool.exe \
		-OrganizationId=$(ORG_ID) \
		-ProductId=$(PRODUCT_ID) \
		-ArtifactId=$(ARTIFACT_ID) \
		-ClientId=$(CLIENT_ID) \
		-ClientSecret=$(CLIENT_SECRET) \
		-mode="UploadBinary" \
		-BuildRoot=$(BUILD_ROOT) \
		-CloudDir=$(CLOUD_DIR) \
		-BuildVersion=$(VERSION) \
		-AppLaunch=$(APP_LAUNCH) \
		-AppArgs=""