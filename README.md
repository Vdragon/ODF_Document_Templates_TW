# 開放文件格式(ODF)文件範本<br />ODF document templates

## 這是什麼？<br />What is this?
這是「開放文件格式(ODF)文件範本」的軟體專案網站

## 本專案的智慧財產授權條款<br />Intellectual property license of this project
CC BY-SA 3.0 或任一更新版本授權條款

## 軟體建構依賴關係<br />Software build dependency
本專案需要下列函式庫以便建構：

* 只適用於 C/C++ 語言專案
	* 標準Ｃ函式庫
	* [Ｖ字龍的C、C++程式語言函式庫收集<br />Vdragons C CPP Libraries Collection](https://github.com/Vdragon/Vdragons_C_CPP_Libraries_Collection)
		* VCCL_showSoftwareInfo
		* VCCL_printSomething
		* VCCL_Error_C
		* VCCL_pauseProgram 
	* 請將函式庫、函式庫標頭檔(library headers)安裝到系統預設搜索目錄，或是放在 Libraries/ 、Library_headers/ 子目錄中再進行軟體建構。

## 如何建構專案？（僅適用於需要建構的軟體專案）<br />How to build the project?  (Only applicable to project needed to be built)
### 使用整合式開發環境建構專案
1. 到各整合式開發環境目錄(IDE_*)底下，開啟／匯入專案
2. 透過整合式開發環境提供的介面來建構專案。

### 使用 CMake 軟體建構系統建構專案
1. 在終端機軟體中將當前工作目錄切換到 CMake 軟體建構系統的目錄(Buildsystem_CMake)中
2. 執行 cmake ..
3. 執行 make
4. 建構出來的檔案會在當前工作目錄中的 Build/ 目錄底下

## 檔案與目錄說明<br />File and directory description
* 3rd_party_software/
	* This directory stores 3rd party software used by this project
* Tools/
	* 專案相關的一些工具
* Source_code/
    * 軟體的來源程式碼  
      Software's source code
* Build/
    * 建構好的軟體  
      Built software
* Resources/
	* 軟體會使用到但是非程式的資源
* Documentation/
	* 專案的其他說明文件
* Coding_style_configuration/
	* 程式碼撰寫風格設定檔
* Templates/
	* 可能會用到的檔案範本
* Git_hooks/
	* 專案使用的 Git 版本控制系統掛勾程式(hook)
* README.md
	* 本說明文件  
	  This documentation

## 常見問題與解答<br />Frequently Asked Questions and answers

## 如何對本專案做出貢獻<br />How to contribute to this project
### 回報問題與改善建議<br />Report issues and improvement suggestions
* 發現問題或是有改善本專案的建議的話請到[本專案的問題追蹤系統(issue tracker)](../../issues)建檔回報

### 貢獻本專案內容
* 要貢獻內容的話歡迎克隆(clone)本專案的版本倉庫至您的電腦中，建立並切換至一個新的 Git 分支(branch)完成編輯後提交(commit)為一個新版本，推送到您的 GitHub 版本倉庫再跟我們的版本倉庫發出拉取請求(pull request)

### 宣傳本專案給別人

### 翻譯本專案內容
如果您熟悉其他語言，歡迎將本專案之內容翻譯為不同的語言
