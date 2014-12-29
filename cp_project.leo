<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo (http://leoeditor.com/leo_toc.html) -->
<?xml-stylesheet ekr_test?>
<leo_file xmlns:leo="http://www.leo-editor.org/2011/leo" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="course-mde-tw.20140417093332.1998"><vh>@settings</vh>
<v t="course-mde-tw.20140417093332.1999"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="course-mde-tw.20140417093332.2000"><vh>@string initial_split_orientation = horizontal</vh></v>
<v t="course-mde-tw.20140417093332.2001"><vh>@string rst3_write_intermediate_extension = .rst</vh></v>
</v>
<v t="2015.20141216095746.1751" a="E"><vh>正齒輪繪圖設計參數</vh>
<v t="2015.20141216095746.1752"><vh>cube pro/web.link</vh></v>
<v t="2015.20141216095746.1753"><vh>四連桿自動組立</vh></v>
</v>
<v t="2014spring.20140430175148.1771"><vh>@edit README.md</vh></v>
<v t="2015.20140906140521.3770"><vh>@edit setup.py</vh></v>
<v t="course-mde-tw.20140417093332.2027" a="E"><vh>@path wsgi</vh>
<v t="2015.20140906140521.4229"><vh>@path static/templates</vh>
<v t="2015.20140906140521.4234"><vh>@edit meta.html</vh></v>
<v t="2015.20140906140521.4230"><vh>@edit index.html</vh></v>
<v t="2015.20140906140521.4233"><vh>@edit default.html</vh></v>
<v t="2015.20140906140521.4231"><vh>@edit docheck.html</vh></v>
<v t="2015.20140906140521.4235"><vh>@edit mytest.html</vh></v>
<v t="2015.20140906140521.4232"><vh>@edit footer.html</vh></v>
</v>
<v t="2015.20140907143819.2148"><vh>@edit pybean.py</vh></v>
<v t="course-mde-tw.20140417093332.2028"><vh>@auto application_orig.py</vh></v>
<v t="2015.20140907143819.1791" a="E"><vh>@file application</vh></v>
<v t="2015.20140907143819.2142" a="E"
expanded="2015.20140907143819.2144,"><vh>@file gear.py</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="2015.20140906140521.4229"></t>
<t tx="2015.20141216095746.1751">dp=1/module
wholedepth=2.25*module

ADDENDUM = 1/dp
clearance = wholedepth-(2*ADDENDUM)
DEDENDUM = wholedepth-ADDENDUM-clearance

D147 = clearance
invpressangle=tan(pressangle)-(pressangle/180)*pi
PITCHDIA = n/dp
ROOT_DIA=PITCHDIA-(2*DEDENDUM)-(2*clearance)
THK_P = (pi/2)/dp
TANGP=(2*THK_P/PITCHDIA)*180/PI
toverd=THK_P/PITCHDIA
ADDENDUMDIA=PITCHDIA+(2*ADDENDUM)
PITCHDIAMETER = PITCHDIA
BASEDIA = pitchdia*cos(pressangle)
BASEDIAMETER = BASEDIA
z=invpressangle+toverd
THK_B = (z)*BASEDIA
TANGBASE=(2*THK_B/BASEDIA)*180/PI
pd = n/dp
a = pressangle
ad = ADDENDUM
D_O = pd+(2*(ad))
r_b = .5*pd*cos(pressangle)
D320 = tangbase/2
D325 = tangbase/2
D335 = 360/n
P337=n-1
D336 = 360/N
D327 = face_width
D334 = face_width

D566 = .39/dp
D686 = BORE_DIA

D722 = (PITCHDIAMETER+(2*ADDENDUM))/2
D720 = .8*ADDENDUM
/*D748 = .4*d739
/*D747 = .4*d739</t>
<t tx="2015.20141216095746.1752">&lt;h1&gt;Creo 參數化零件&lt;/h1&gt;
&lt;script type="text/javascript" src="/static/weblink/pfcUtils.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/weblink/wl_header.js"&gt;// &lt;![CDATA[
document.writeln ("Error loading Pro/Web.Link header!");
// ]]&gt;&lt;/script&gt;
&lt;script type="text/javascript" language="JavaScript"&gt;// &lt;![CDATA[
if (!pfcIsWindows()) netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
// 若第三輸入為 false, 表示僅載入 session, 但是不顯示
// ret 為 model open return
 var ret = document.pwl.pwlMdlOpen("cube.prt", "v:/tmp", false);
if (!ret.Status) {
    alert("pwlMdlOpen failed (" + ret.ErrorCode + ")");
}
    //將 ProE 執行階段設為變數 session
    var session = pfcGetProESession();
    // 在視窗中打開零件檔案, 並且顯示出來
    var window = session.OpenFile(pfcCreate("pfcModelDescriptor").CreateFromFileName("cube.prt"));
    var solid = session.GetModel("cube.prt",pfcCreate("pfcModelType").MDL_PART);
    var length,width,myf,myn,i,j,volume,count,d1Value,d2Value;
    // 將模型檔中的 length 變數設為 javascript 中的 length 變數
    length = solid.GetParam("a1");
    // 將模型檔中的 width 變數設為 javascript 中的 width 變數
    width = solid.GetParam("a2");
//改變零件尺寸
    //myf=20;
    //myn=20;
    volume=0;
    count=0;
    try
    {
            // 以下採用 URL 輸入對應變數
            //createParametersFromArguments ();
            // 以下則直接利用 javascript 程式改變零件參數
            for(i=0;i&lt;=5;i++)
            {
                //for(j=0;j&lt;=2;j++)
                //{
                    myf=100.0;
                    myn=100.0+i*5.0;
// 設定變數值, 利用 ModelItem 中的 CreateDoubleParamValue 轉換成 Pro/Web.Link 所需要的浮點數值
         d1Value = pfcCreate ("MpfcModelItem").CreateDoubleParamValue(myf);
         d2Value = pfcCreate ("MpfcModelItem").CreateDoubleParamValue(myn);
// 將處理好的變數值, 指定給對應的零件變數
                    length.Value = d1Value;
                    width.Value = d2Value;
                    //零件尺寸重新設定後, 呼叫 Regenerate 更新模型
                    solid.Regenerate(void null);
                    //利用 GetMassProperty 取得模型的質量相關物件
                    properties = solid.GetMassProperty(void null);
                    //volume = volume + properties.Volume;
volume = properties.Volume;
                    count = count + 1;
alert("執行第"+count+"次,零件總體積:"+volume);
// 將零件存為新檔案
var newfile = document.pwl.pwlMdlSaveAs("cube.prt", "v:/tmp", "cube"+count+".prt");
if (!newfile.Status) {
    alert("pwlMdlSaveAs failed (" + newfile.ErrorCode + ")");
}
//} // 內圈 for 迴圈
            } //外圈 for 迴圈
            //alert("共執行:"+count+"次,零件總體積:"+volume);
            //alert("零件體積:"+properties.Volume);
            //alert("零件體積取整數:"+Math.round(properties.Volume));
        }
    catch(err)
        {
            alert ("Exception occurred: "+pfcGetExceptionType (err));
        }
// ]]&gt;&lt;/script&gt;</t>
<t tx="2015.20141216095746.1753">&lt;script type="text/javascript" src="/static/weblink/pfcUtils.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/weblink/wl_header.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript"&gt;// &lt;![CDATA[
if (!pfcIsWindows())
netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
var session = pfcGetProESession();
// 設定 config option
session.SetConfigOption("comp_placement_assumptions","no");
// 建立擺放零件的位置矩陣
var identityMatrix = pfcCreate ("pfcMatrix3D");
for (var x = 0; x &lt; 4; x++)
	for (var y = 0; y &lt; 4; y++)
	{
		if (x == y)
			identityMatrix.Set (x, y, 1.0);
		else
			identityMatrix.Set (x, y, 0.0);
	}
var transf = pfcCreate ("pfcTransform3D").Create (identityMatrix);
// 取得目前的工作目錄
var currentDir = session.getCurrentDirectory();
// 以目前已開檔, 作為 model
var model = session.CurrentModel;
// 查驗有無 model, 或 model 類別是否為組立件
if (model == void null || model.Type != pfcCreate ("pfcModelType").MDL_ASSEMBLY)
throw new Error (0, "Current model is not an assembly.");
var assembly = model;
/**----------------------------------------------- link0 -------------------------------------------------------------**/
    //檔案目錄，建議將圖檔放置工作目錄下較方便使用
	var descr = pfcCreate ("pfcModelDescriptor").CreateFromFileName ("v:/home/fourbar/link0.prt");
	// 若 link1.prt 在 session 則直接取用
	var componentModel = session.GetModelFromDescr (descr);
	//若 link1.prt 不在 session 則從工作目錄中載入 session
	var componentModel = session.RetrieveModel(descr);
	//若 link1.prt 已經在 session 則放入組立檔中
	if (componentModel != void null)
	{
		//注意這個 asmcomp 即為設定約束條件的本體
		//asmcomp 為特徵物件,直接將零件, 以 transf 座標轉換放入組立檔案中
		var asmcomp = assembly.AssembleComponent (componentModel, transf);
	}
// 建立約束條件變數
var constrs = pfcCreate ("pfcComponentConstraints");
//設定組立檔中的三個定位面, 注意內定名稱與 Pro/E WF 中的 ASM_D_FRONT 不同, 而是 ASM_FRONT
var asmDatums = new Array ("ASM_FRONT", "ASM_TOP", "ASM_RIGHT");
//設定零件檔中的三個定位面, 名稱與 Pro/E WF 中相同
var compDatums = new Array ("FRONT", "TOP", "RIGHT");
	//建立 ids 變數, intseq 為 sequence of integers 為資料類別, 使用者可以經由整數索引擷取此資料類別的元件, 第一個索引為 0
	var ids = pfcCreate ("intseq");
	//建立路徑變數
	var path = pfcCreate ("MpfcAssembly").CreateComponentPath (assembly, ids);
	//採用互動式設定相關的變數
	var MpfcSelect = pfcCreate ("MpfcSelect");
//利用迴圈分別約束組立與零件檔中的三個定位平面
for (var i = 0; i &lt; 3; i++)
{
	//設定組立參考面
	var asmItem = assembly.GetItemByName (pfcCreate ("pfcModelItemType").ITEM_SURFACE, asmDatums [i]);
	//若無對應的組立參考面, 則啟用互動式平面選擇表單 flag
	if (asmItem == void null)
	{
		interactFlag = true;
		continue;
	}
	//設定零件參考面
	var compItem = componentModel.GetItemByName (pfcCreate ("pfcModelItemType").ITEM_SURFACE, compDatums [i]);
	//若無對應的零件參考面, 則啟用互動式平面選擇表單 flag
	if (compItem == void null)
	{
		interactFlag = true;
		continue;
	}
	var asmSel = MpfcSelect.CreateModelItemSelection (asmItem, path);
	var compSel = MpfcSelect.CreateModelItemSelection (compItem, void null);
	var constr = pfcCreate ("pfcComponentConstraint").Create (pfcCreate ("pfcComponentConstraintType").ASM_CONSTRAINT_ALIGN);
	constr.AssemblyReference = asmSel;
	constr.ComponentReference = compSel;
	constr.Attributes = pfcCreate ("pfcConstraintAttributes").Create (false, false);
	//將互動選擇相關資料, 附加在程式約束變數之後
	constrs.Append (constr);
}
//設定組立約束條件
asmcomp.SetConstraints (constrs, void null);
/**-------------------------------------------------------------------------------------------------------------------**/
/**----------------------------------------------- link1 -------------------------------------------------------------**/
var descr = pfcCreate ("pfcModelDescriptor").CreateFromFileName ("v:/home/fourbar/link1.prt");
var componentModel = session.GetModelFromDescr (descr);
var componentModel = session.RetrieveModel(descr);
if (componentModel != void null)
{
	var asmcomp = assembly.AssembleComponent (componentModel, transf);
}
var components = assembly.ListFeaturesByType(true, pfcCreate ("pfcFeatureType").FEATTYPE_COMPONENT);
var featID = components.Item(0).Id;
ids.Append(featID);
var subPath = pfcCreate ("MpfcAssembly").CreateComponentPath( assembly, ids );
subassembly = subPath.Leaf;
var asmDatums = new Array ("A_1", "TOP", "ASM_TOP");
var compDatums = new Array ("A_1", "TOP", "TOP");
var relation = new Array (pfcCreate ("pfcComponentConstraintType").ASM_CONSTRAINT_ALIGN, pfcCreate ("pfcComponentConstraintType").ASM_CONSTRAINT_MATE);
var relationItem = new Array(pfcCreate("pfcModelItemType").ITEM_AXIS,pfcCreate("pfcModelItemType").ITEM_SURFACE);
var constrs = pfcCreate ("pfcComponentConstraints");
for (var i = 0; i &lt; 2; i++)
	{
		var asmItem = subassembly.GetItemByName (relationItem[i], asmDatums [i]);
		if (asmItem == void null)
		{
			interactFlag = true;
			continue;
		}
		var compItem = componentModel.GetItemByName (relationItem[i], compDatums [i]);
		if (compItem == void null)
		{
			interactFlag = true;
			continue;
		}
		var MpfcSelect = pfcCreate ("MpfcSelect");
		var asmSel = MpfcSelect.CreateModelItemSelection (asmItem, subPath);
		var compSel = MpfcSelect.CreateModelItemSelection (compItem, void null);
		var constr = pfcCreate ("pfcComponentConstraint").Create (relation[i]);
		constr.AssemblyReference  = asmSel;
		constr.ComponentReference = compSel;
		constr.Attributes = pfcCreate ("pfcConstraintAttributes").Create (true, false);
		constrs.Append (constr);
	}
asmcomp.SetConstraints (constrs, void null);
	
/**-------------------------------------------------------------------------------------------------------------------**/
/**----------------------------------------------- link2 -------------------------------------------------------------**/
var descr = pfcCreate ("pfcModelDescriptor").CreateFromFileName ("v:/home/fourbar/link2.prt");
var componentModel = session.GetModelFromDescr (descr);
var componentModel = session.RetrieveModel(descr);
if (componentModel != void null)
{
	var asmcomp = assembly.AssembleComponent (componentModel, transf);
}
var ids = pfcCreate ("intseq");
ids.Append(featID+1);
var subPath = pfcCreate ("MpfcAssembly").CreateComponentPath( assembly, ids );
subassembly = subPath.Leaf;
var asmDatums = new Array ("A_2", "TOP", "ASM_TOP");
var compDatums = new Array ("A_1", "TOP", "TOP");
var relation = new Array (pfcCreate ("pfcComponentConstraintType").ASM_CONSTRAINT_ALIGN, pfcCreate ("pfcComponentConstraintType").ASM_CONSTRAINT_MATE);
var relationItem = new Array(pfcCreate("pfcModelItemType").ITEM_AXIS,pfcCreate("pfcModelItemType").ITEM_SURFACE);
var constrs = pfcCreate ("pfcComponentConstraints");
for (var i = 0; i &lt; 2; i++)
	{
		var asmItem = subassembly.GetItemByName (relationItem[i], asmDatums [i]);
		if (asmItem == void null)
		{
			interactFlag = true;
			continue;
		}
		var compItem = componentModel.GetItemByName (relationItem[i], compDatums [i]);
		if (compItem == void null)
		{
			interactFlag = true;
			continue;
		}
		var MpfcSelect = pfcCreate ("MpfcSelect");
		var asmSel = MpfcSelect.CreateModelItemSelection (asmItem, subPath);
		var compSel = MpfcSelect.CreateModelItemSelection (compItem, void null);
		var constr = pfcCreate ("pfcComponentConstraint").Create (relation[i]);
		constr.AssemblyReference  = asmSel;
		constr.ComponentReference = compSel;
		constr.Attributes = pfcCreate ("pfcConstraintAttributes").Create (true, false);
		constrs.Append (constr);
	}
asmcomp.SetConstraints (constrs, void null);
	
/**-------------------------------------------------------------------------------------------------------------------**/
/**----------------------------------------------- link3 -------------------------------------------------------------**/
var descr = pfcCreate ("pfcModelDescriptor").CreateFromFileName ("v:/home/fourbar/link3.prt");
var componentModel = session.GetModelFromDescr (descr);
var componentModel = session.RetrieveModel(descr);
if (componentModel != void null)
{
	var asmcomp = assembly.AssembleComponent (componentModel, transf);
}
var relation = new Array (pfcCreate ("pfcComponentConstraintType").ASM_CONSTRAINT_ALIGN, pfcCreate ("pfcComponentConstraintType").ASM_CONSTRAINT_MATE);
var relationItem = new Array(pfcCreate("pfcModelItemType").ITEM_AXIS,pfcCreate("pfcModelItemType").ITEM_SURFACE);
var constrs = pfcCreate ("pfcComponentConstraints");
var ids = pfcCreate ("intseq");
ids.Append(featID+2);
var subPath = pfcCreate ("MpfcAssembly").CreateComponentPath( assembly, ids );
subassembly = subPath.Leaf;
var asmDatums = new Array ("A_2");
var compDatums = new Array ("A_1");
for (var i = 0; i &lt; 1; i++)
	{
		var asmItem = subassembly.GetItemByName (relationItem[i], asmDatums [i]);
		if (asmItem == void null)
		{
			interactFlag = true;
			continue;
		}
		var compItem = componentModel.GetItemByName (relationItem[i], compDatums [i]);
		if (compItem == void null)
		{
			interactFlag = true;
			continue;
		}
		var MpfcSelect = pfcCreate ("MpfcSelect");
		var asmSel = MpfcSelect.CreateModelItemSelection (asmItem, subPath);
		var compSel = MpfcSelect.CreateModelItemSelection (compItem, void null);
		var constr = pfcCreate ("pfcComponentConstraint").Create (relation[i]);
		constr.AssemblyReference  = asmSel;
		constr.ComponentReference = compSel;
		constr.Attributes = pfcCreate ("pfcConstraintAttributes").Create (true, false);
		constrs.Append (constr);
	}
asmcomp.SetConstraints (constrs, void null);
var ids = pfcCreate ("intseq");
ids.Append(featID);
var subPath = pfcCreate ("MpfcAssembly").CreateComponentPath( assembly, ids );
subassembly = subPath.Leaf;
var asmDatums = new Array ("A_2", "TOP");
var compDatums = new Array ("A_2", "BOTTON");
for (var i = 0; i &lt; 2; i++)
	{
		var asmItem = subassembly.GetItemByName (relationItem[i], asmDatums [i]);
		if (asmItem == void null)
		{
			interactFlag = true;
			continue;
		}
		var compItem = componentModel.GetItemByName (relationItem[i], compDatums [i]);
		if (compItem == void null)
		{
			interactFlag = true;
			continue;
		}
		var MpfcSelect = pfcCreate ("MpfcSelect");
		var asmSel = MpfcSelect.CreateModelItemSelection (asmItem, subPath);
		var compSel = MpfcSelect.CreateModelItemSelection (compItem, void null);
		var constr = pfcCreate ("pfcComponentConstraint").Create (relation[i]);
		constr.AssemblyReference  = asmSel;
		constr.ComponentReference = compSel;
		constr.Attributes = pfcCreate ("pfcConstraintAttributes").Create (true, true);
		constrs.Append (constr);
	}
asmcomp.SetConstraints (constrs, void null);
/**-------------------------------------------------------------------------------------------------------------------**/
var session = pfcGetProESession ();
var solid = session.CurrentModel;
properties = solid.GetMassProperty(void null);
var COG = properties.GravityCenter;
document.write("MassProperty:&lt;br /&gt;");
document.write("Mass:"+(properties.Mass.toFixed(2))+"       pound&lt;br /&gt;");
document.write("Average Density:"+(properties.Density.toFixed(2))+"       pound/inch^3&lt;br /&gt;");
document.write("Surface area:"+(properties.SurfaceArea.toFixed(2))+"           inch^2&lt;br /&gt;");
document.write("Volume:"+(properties.Volume.toFixed(2))+"   inch^3&lt;br /&gt;");
document.write("COG_X:"+COG.Item(0).toFixed(2)+"&lt;br /&gt;");
document.write("COG_Y:"+COG.Item(1).toFixed(2)+"&lt;br /&gt;");
document.write("COG_Z:"+COG.Item(2).toFixed(2)+"&lt;br /&gt;");
try
{
document.write("Current Directory:&lt;br /&gt;"+currentDir);
}
catch (err)
{
alert ("Exception occurred: "+pfcGetExceptionType (err));
}
assembly.Regenerate (void null);
session.GetModelWindow (assembly).Repaint();
// ]]&gt;&lt;/script&gt;</t>
<t tx="course-mde-tw.20140417093332.1998"></t>
<t tx="course-mde-tw.20140417093332.1999">QSplitter::handle {
    background-color: #CAE1FF; /* lightSteelBlue1 */
}

QStackedWidget {
    /* background-color:lightpink; */
    border-color: red;
    padding: 0px;
    /* border-width: 0px; */
    /* background-color: yellow; */
}

QSplitter {
    border-color: white;
    background-color: white;
    border-style: solid;
}

QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="course-mde-tw.20140417093332.2000">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="course-mde-tw.20140417093332.2001"></t>
<t tx="course-mde-tw.20140417093332.2027"></t>
</tnodes>
</leo_file>
