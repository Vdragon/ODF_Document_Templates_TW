# The format of this file is based on GNU_Make_Makefile_templates
# https://github.com/Vdragon/GNU_Make_Makefile_templates
# 變數
# Variables

## 關於專案本身的變數
## Variables about the project itself
name_project = ODF_document_templates
name_project_abbrieviation = name_project_abbrieviation undefined
name_target = name_target undefined
name_module = name_module undefined

## 目錄取名？
## Directory names?
dir_source_code = Source_code
dir_object_code = Object_code
dir_build = Build
dir_executables = Executables
dir_libraries = Libaries
dir_library_headers = Library_headers

## 安裝路徑前綴設定
DIR_INSTALL_PREFIX_UNIX = /usr/local
dir_install_prefix = ${DIR_INSTALL_PREFIX_UNIX}

## 刪除檔案相關
## Delete file related
### DOS/Windows
FILE_REMOVER_WINDOWS = del

### Unix
FILE_REMOVER_UNIX = rm
OPTION_FILE_REMOVER_UNIX_FORCE = --force
OPTION_FILE_REMOVER_UNIX_RECURSIVE = --recursive
COMMAND_REMOVE_UNIX = ${FILE_REMOVER_UNIX} ${OPTION_FILE_REMOVER_UNIX_FORCE}
COMMAND_REMOVE_UNIX_RECURSIVE = ${COMMAND_REMOVE_UNIX} ${OPTION_FILE_REMOVER_UNIX_RECURSIVE}

## 創造新目錄相關
## Create directory related
DIR_CREATER_WINDOWS = mkdir
DIR_CREATER_UNIX = mkdir

OPTION_MKDIR_CREATE_PARENT_AUTOMATICALLY = --parent

## 安裝檔案相關
## Install files related
FILE_INSTALLER_UNIX = install
OPTION_FILE_INSTALLER_UNIX_AUTOMATIC_CREATE_PARENT_DIRECTORY = -D

COMMAND_INSTALL_UNIX = ${FILE_INSTALLER_UNIX} ${OPTION_FILE_INSTALLER_UNIX_AUTOMATIC_CREATE_PARENT_DIRECTORY}

## System environment details related
### Unix
# -s is used instead of --sysname for portability
COMMAND_UNAME_FETCH_SYSTEM_NAME = uname -s
# -p is used instead of --processer for portability
COMMAND_UNAME_FETCH_PROCESSER_ARCHITECHTURE = uname -p

# 主要內容
# Main content
.PHONY : all
all : build

.PHONY : build
build : build_flatodf2odf

.PHONY : build_flatodf2odf
build_flatodf2odf : 
	# FIXME: 修正命令寫死「libreoffice4.3」的問題
	libreoffice4.3 --headless --convert-to odt *.fodt
