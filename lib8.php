<?php
//connect($hostname,$username,$password,$dbname,$tblname,$dbhandle);
//mysql_close($dbhandle);  
//testing_post();
 
 //FUNCTIONS:
 //
function port_lang(){
    if (isset($_SESSION['lang']) ){
    }
    else{
        $_SESSION['lang']='en';
    }
    include("lang/".$_SESSION['lang'].".php"); 
}

function start(){
    
    if (empty($_POST)){
        echo "post is empty";        
        }
    else{
        $input_score = $_POST['puan'];
        $exam_index = $_POST['exam_type'];
        
        switch ($exam_index) {
            case 0:
                $exam_type = _all;
                break;
            case 1:
                $exam_type= _humanities;
                break;
            case 2:
                $exam_type= _natural_sciences;
                break;
            case 3:
                $exam_type = _common;
                break;
        }
       echo _input_score.$input_score."<br>";
       echo _user_exam.$exam_type."<br>";
       //$result = get_all("faculty");
       //dic_show_in_table($result);
       run3($input_score, $exam_type);        
       //process_input_data();
    }
        
}
function get_all($tbl){
    mysql_query("SET NAMES UTF8");
    //execute the SQL query and return records
     //SELECT * FROM reviews WHERE description REGEXP '[[:<:]]excellent[[:>:]]'
    $query = "SELECT * FROM `".$tbl."` WHERE 1";      
    $result = mysql_query($query); 
    if (!$result){
        echo "Query failed.";
    }
    else
        return $result;
    
}
function dic_show_in_table($result){
if (!$result){
        echo "Query failed. Show_in_table()";
    }
    else
         return $result; 
echo "<table>"; // start a table tag in the HTML

while($row = mysql_fetch_array($result)){   //Creates a loop to loop through results
echo "<tr><td>" . $row[1] . "</td><td>" . $row[2] . "</td></tr>";  //$row['index'] the index here is a field name
}

echo "</table>"; //Close the table in HTML

    
}
function get_starting_with($tblname, $field_name, $field_val){
        $field_val = mb_strtoupper($field_val, 'UTF-8');
        //SELECT Name FROM Employees WHERE Name REGEXP '^[B].*$'
         // SELECT * FROM baktybek2_ktmu.enc_astronomy1,  baktybek2_ktmu.enc_computer_science WHERE key REGEXP  '^[[:<:]]Б'  
        $query = "SELECT * FROM`".$tblname."` WHERE `".$field_name."` REGEXP '^[[:<:]]".$field_val."'";
        $result = mysql_query($query); 
        if (!$result){
            echo "Query failed.";
        }
        else
             return $result;        
}
function get_by($tblname, $field, $key){
        $key = mb_strtoupper($key, 'UTF-8');
        //SELECT Name FROM Employees WHERE Name REGEXP '^[B].*$'
         // SELECT * FROM baktybek2_ktmu.enc_astronomy1,  baktybek2_ktmu.enc_computer_science WHERE key REGEXP '^[[:<:]]Б'  
        $size = count($tblname);
        $i=0;
        foreach ($tblname as $value) {
            $i++;
            $query .= "(SELECT * FROM`".$value."` WHERE `".$field."` REGEXP '^[[:<:]]".$key."')";
            if ($size==$i) {
                break;
            }
            $query.=" UNION ";

        }
        
        $result = mysql_query($query); 
        if (!$result){
            echo "Query failed.";
        }
        else
             return $result;        
}
function run3($key, $exam_type){
    
    require_once("../connection.php");   
     
    $tblname[1] = "enc_astronomy1";
    $tblname[2] = "enc_computer_science";
    $tblname[3] = "enc_biology";
    $tblname[3] = "enc_chemistry";
    $dbhandle =NULL;

    $dbhandle = connect($hostname,$username,$password,$dbname);
    //$result = get_all($tblname);
    $result = get_by($tblname, "term", $key);
    draw_table1($result);
    mysql_close($dbhandle);

}
function run2($score, $exam_type){
    
require_once("../connection.php");
/*
//Local host
$username = "kadyrm";
$password = "123";
$hostname = "localhost";
$dbname = "ktmu"; 
*/
/*
// mydict Server
$username = "baktybek2_kadyrm";
$password = "123";
$hostname = "mysql";
$dbname = "baktybek2_ktmu"; 
 */
 
/*
// Talant's Server
$username = "kadyrm";
$password = "123";
$hostname = "localhost";
$dbname = "ktmu"; 
 */
 
$tblname = "dep_choose_"._lang;
$dbhandle =NULL;

$dbhandle = connect($hostname,$username,$password,$dbname);
if ($exam_type == _all)
    $result = get_greater_than($tblname, "score_min", $score);
    //$result = get_all("quota_and_score_minmax");
else{
    $result = get_by($tblname, $score, $exam_type);    
}
draw_table($result);
mysql_close($dbhandle);

}
function process_input_data(){
    
    if (empty($_POST)){
        echo "post is empty";        
        }
    else{
        $input_score = $_POST['puan'];
        $exam_index = $_POST['exam_type'];
        $lang = $_POST['lang'];
        $exam_type_array = array(   'tr'=>array("Tümü", "Sözel", "Sayısal"),
                                    'kg'=>array("Бардыгы", "Гуманитардык", "Так илимий" ),
                                    'en'=>array("All", "Humanities", "Natural"),
                                    'ru'=>array("Любой", "Гуманитарный", "Естественнонаучный")
                                    );
        switch ($exam_index) {
            case 0:
                $exam_type = "All";
                break;
            case 1:
                $exam_type= "Sözel";
                break;
            case 2:
                $exam_type= "Sayısal";
                break;
            case 3:
                $exam_type = "EA";
                break;
        }
       echo "Girdiğiniz puan: ".$input_score."<br>";
       echo "Seçtğiniz puan türü: ".$exam_type."<br>";
       //echo exam_type_array['tr'];
       //run2($input_score, $exam_type);        
    }
        
}  
function run($arg_1){
    
$username = "kadyrm";
$password = "123";
$hostname = "local";
$dbname = "ktmu"; 
$tblname = "quota_and_score_minmax";
$dbhandle =NULL;

//$query = get_greater_than_from($tblname,$post_data,"humanities");
//echo $query;
$dbhandle = connect($hostname,$username,$password,$dbname);
$result = get_all("quota_and_score_minmax");
$result = get_by($tblname, $arg_1, "humanities");
$result = get_greater_than($tblname, "score_min", $arg_1);

put_in_table($result);
mysql_close($dbhandle);
}
function draw_table1($result){
echo "<table>"; // start a table tag in the HTML
    while($row = mysql_fetch_array($result)){   //Creates a loop to loop through results
    echo "<tr><td>" . $row['term'] . "</td><td>" . $row['definition'] . "</td></tr>";  //$row['index'] the index here is a field name
    }
echo "</table>"; //Close the table in HTML
}

function draw_table($result){
echo "<br><br><table class='table table-striped'><tr>";
echo "<th>"._faculty."</th>";
echo "<th>"._program_code."</th>";
echo "<th>"._program_name."</th>";
echo "<th style='width:50px;text-align:center;'>"._exam_type."</th>";
echo "<th style='text-align:center;'>"._OSYS_quota."</th>";
echo "<th style='text-align:center;'>"._Manas_quota."</th>";
echo "<th>"._min_score."</th>";
echo "<th>"._max_score."</th>";
echo "<th>"._program_type."</th>";
echo "</tr>" ;



put_in_table($result);

echo "</table>";
    
}
function put_in_table($result){

       while ( $row = mysql_fetch_array($result)){
        $id = $row{'id'};
        $code = $row{"code"};
        $fac_url = "#"; 
        echo "<tr>";
        echo "<td>";
        open_tag("a","target", $fac_url);
        echo $row{'faculty'};                   //   output
        close_tag("a");
        echo "</td>";
        echo "<td>";
        echo $row{'code'};                      //   output
        echo "</td>";
        echo "<td>";
        open_tag2("a", "href", $row{'URL'},"target", "_blank");     //   output
        echo $row{'program'};                   //   output
        close_tag("a");
        echo "</td>";
        open_tag("td", "style", "text-align:center;");
        echo $row{'exam_type'};                 //   output
        close_tag("td");
        open_tag("td", "style","text-align:center;")  ;
        echo $row{'quota_osys'};    
        close_tag("td");
        open_tag("td", "style","text-align:center;")  ;
        echo $row{'quota_manas'};
        close_tag('td');
        open_tag("td", "style","text-align:center;")  ;
        echo $row{'score_min'};
        close_tag('td');
        open_tag("td", "style","text-align:center;")  ;
        echo $row{'score_max'};
        close_tag('td');
        open_tag("td", "style","text-align:center;")  ;
        echo $row{'program_type'};
        close_tag('td');
        echo "</tr>";
        }
    
}
function show_table($result){

    
$row = mysql_fetch_array($result);
$id = $row{'id'};
$code = $row{"code"};
$fac_url = "#";

echo "<table>";
echo "<tr>";
echo "<td>";
open_tag("a","href", $fac_url);
echo $row{'faculty'};                   //   output
close_tag("a");
echo "</td>";
echo "<td>";
echo $row{'code'};                      //   output
echo "</td>";
echo "<td>";
open_tag2("a", "href", $row{'URL'},"target", "_blank");     //   output
echo $row{'program'};                   //   output
close_tag("a");
echo "</td>";
open_tag("td", "style", "text-align:center;");
echo $row{'exam_type'};                 //   output
close_tag("td");
open_tag("td", "style","text-align:center;")  ;
echo $row{'quota_osys'};    
close_tag("td");
open_tag("td", "style","text-align:center;")  ;
echo $row{'quota_manas'};
close_tag('td');
open_tag("td", "style","text-align:center;")  ;
echo $row{'score_min'};
close_tag('td');
open_tag("td", "style","text-align:center;")  ;
echo $row{'score_max'};
close_tag('td');
open_tag("td", "style","text-align:center;")  ;
echo "Lisans";
close_tag('td');
echo "</tr>";
echo "</table>";
  
    
}
function open_tag($tag_name, $property_name, $property_value){
    echo "<".$tag_name." ".$property_name."='".$property_value."'".">";
}
function open_tag2($tag_name, $property_name, $property_value, $property_name2, $property_value2){
    echo "<".$tag_name." ".$property_name."='".$property_value."'".$property_name2."='".$property_value2."'>";
}
function close_tag($tag_name){
    echo "</".$tag_name.">";
}
function get_greater_than($tblname, $field_name, $field_val){
        $query = "SELECT * FROM `".$tblname."` WHERE `".$field_name."` <= ".$field_val;
        $result = mysql_query($query); 
        if (!$result){
            echo "Query failed.";
        }
        else
             return $result;        
}


function get_by0($tbl, $score, $exam_type){
        $query = "SELECT * FROM `".$tbl."` WHERE `score_min` <= ".strval($score)." AND `exam_type`"."='".$exam_type."'";      
         mysql_query("SET NAMES UTF8");
        //execute the SQL query and return records
        //$query1 = "SELECT * FROM `quota_and_score_minmax` WHERE `score_min` >= 130 AND `exam_type` = 'humanities'";      
        $result = mysql_query($query); 
        if (!$result)
            echo "Query failed.";
        else
            return $result;
               
}
function query_build($tbl_name){
    
}
function create_condition($field_name, $sign, $field_val){
      return "`".$field_name."`".$sign."'".$field_val."'";        
}
function append_condition($query, $con_name, $con_value){
      $query = $query." AND `".$con_name."` = '".$con_value."'";
      return $query;
    
}
function connect0($hostname,$username,$password, $dbname, $tblname, &$dbhandle, $query){
    $dbhandle = mysql_connect($hostname, $username, $password)
        or die("Unable to connect to MySQL");
    //echo "Connected to MySQL<br>"; 
    //select a database to work with
    $selected = mysql_select_db($dbname,$dbhandle)
      or die("Could not select examples");
    //mysql_query("SET NAMES UTF8");
    //execute the SQL query and return records
    //$query1 = "SELECT * FROM `quota_and_score_minmax` WHERE `score_min` >= 130 AND `exam_type` = 'humanities'";      
    $result = get_all("quota_and_score_minmax");
    if (!$result){
        echo "Query failed.";
    }
    //echo "Database Selected: ".$dbname."<br>";
    //echo "Table selected:".$tblname."<br>";
    //build_tree_expandable($result);
    //mysql_close($dbhandle);   
    return $result;   
}
function connect($hostname,$username,$password, $dbname){
    $dbhandle = mysql_connect($hostname, $username, $password)
        or die("Unable to connect to MySQL");
    //echo "Connected to MySQL<br>"; 
    //select a database to work with
    mysql_query("SET NAMES UTF8");
    $selected = mysql_select_db($dbname,$dbhandle)
      or die("Could not select examples");     
    //echo "Database Selected: ".$dbname."<br>";      
    return $dbhandle;   
}
?>
