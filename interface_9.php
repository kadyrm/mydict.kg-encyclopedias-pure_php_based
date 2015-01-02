<?php
    session_start();
      if (isset($_GET['lang'])){
            $_SESSION['lang']= $_GET['lang'];
      }
      else
      {
            $_SESSION['lang']= "kg";
      }
      require_once("lib8.php");    
      port_lang();
?> 
<!DOCTYPE html>
<html>
<head>
<title><?php echo _page_name; ?></title>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
<meta name="generator" content="HAPedit 3.1">
<meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1' />
<link rel='stylesheet' type='text/css' href='css/stylesheet1.css' />
<link rel="stylesheet" type="text/css" href="css/jquery.treeview.css"> 


</head>
<body>
<div id="container">
    
    <div id="header">
        <img src=" <?php echo _banner; ?>" />  
            
    </div>
        <div id='lang'>
             <a href="?lang=kg">
                  <img src="img/kg.gif" width="18" height="12" alt="english" longdesc="interface9.php?lang=en" />
             </a>
            <a href="?lang=tr">
                 <img src="img/tr.gif" width="18" height="12" alt="english" longdesc="interface9.php?lang=en" />
            </a>    
            <a href="?lang=ru">
                 <img src="img/ru.gif" width="18" height="12" alt="english" longdesc="interface9.php?lang=en" />
            </a>
            <a href="?lang=en">
                  <img src="img/en.gif" width="18" height="12" alt="english" longdesc="interface9.php?lang=en" />
            </a> 
            </div>
            <div style='clear:both'></div>   
    <div id="vnavigation">            
        <div id='h_menu'>
	<ul>
	   <li class='active'><a href='http://mydict.kg'><span><?php echo _home; ?></span></a></li>
	   <li><a href='index.php?lang=<?php echo _lang; ?>'><span><?php echo _menu_disc_enc; ?></span></a></li>
	   <li><a href='../sitemap/index.php?lang=<?php echo _lang; ?>'><span><?php echo _menu_dict; ?></span></a></li>
	   <li class='last'><a href='../downloads'><span><?php echo _menu_downloads; ?></span></a></li>

	</ul>
	</div>
    </div>
    <hr>
    <div class="alert alert-info"><hr><h3><?php echo _bot_name; ?></h3></div>
    <div id="wrapper">                       
                
             
        <div class="row" >
            <div class="span3">
            
                <form action="action_6.php?lang=<?php echo $_SESSION['lang']; ?> " method="POST">
                    <fieldset>
                        <legend><?php echo _legend; ?></legend>
                        <label><?php echo _promt; ?>                      
                        <input style="width:200px;" name="puan" type="text" value="ААЛАМ"/><br>
                        </label>
                        <label><br><?php echo _invitation; ?></label>                                                
                        <p>
                        <label class='radio inline'>
                        <input checked type='radio' name='exam_type' value='0'>
                            <?php echo _all; ?>
                        </label>
                        <label class='radio inline'>
                        <input  type='radio' name='exam_type' value='1'>
                            <?php echo _humanities; ?>
                        </label>
                        <label class='radio inline'>
                        <input  type='radio' name='exam_type' value='2'>
                            <?php echo _natural_sciences; ?>
                        </label>
                        <label class='radio inline'>
                        <input  type='radio' name='exam_type' value='3'>
                            <?php echo _common; ?>
                        </label>
                        </p>                                            
                        <input type="submit" name="Puan Giris" title="Gonder" value="<?php echo _submit; ?>">                        
                    </fieldset>
                </form>
            </div>      
                   
            </div>
             
               
        
    </div>
    
    
    <div id="footer"><p><?php echo _footer;?></p></div>
    
    
</div>
<script src="js/jquery-1.4.min.js" type="text/javascript"></script>
    <script src="js/jquery.cookie.js" type="text/javascript"></script>
    <script src="js/jquery.treeview.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(function() {
            $("#tree").treeview({
                collapsed: true,
                animated: "medium",
                control:"#sidetreecontrol",
                prerendered: true,
                persist: "location"
            });
        })    
    </script>
</body>
</html>