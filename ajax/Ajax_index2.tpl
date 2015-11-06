<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no"/>
    <title>留言板</title>
    <link rel="stylesheet" href="__PUBLIC__/Home/css/bootstrap.css" />
    <link rel="stylesheet" href="__PUBLIC__/Home/css/style.css"/>
    <script src="__PUBLIC__/Home/js/jquery-2.1.4.min.js"></script>
    <script src="__PUBLIC__/Home/js/bootstrap.js"></script>
    <script src="__PUBLIC__/Home/js/script.js"></script>
</head>
<body style="margin-left:20px;">
<div style="width:300px;"> 
   <foreach name='list' item='val'>  
     <div>
      <tr>
        <td>
          {$val.username}   
        </td>
        <td>  
          {$val.title}
        </td>
      </tr> 
     </div>

     <p>{$val.desc}</p>
   </foreach>  
</div>     
<div style="width:300px;">
 
     <table style="float:left;">
       <tr>
         <td>姓名:</td>
         <td><input type="text" name="username" id="username"></td>
       </tr>
       <tr>
         <td>标题:</td>
         <td><input type="text" name="title" id="title"></td>
       </tr>
       <tr>
         <td>内容</td>
         <td><textarea name="desc" cols="30" rows="5" id="desc"></textarea></td>
       </tr>      
     </table>
     <button id="but" style="margin-right:10px; float:right;">提交</button>


</div>     
</body>
<script>
     $('#but').click(function(){
      
      var username = $("#username").val();
      var title = $("#title").val();
      var desc = $("#desc").val();

      $.ajax({
             url:"{:U('Ajax/index')}",
             type:'post',
             datatype:'json',
             data:{
              'username':username,
              'title':title,
              'desc':desc
             },
             success:function(data){ 
                alert(data);              
                if(data==1){
          			   alert("留言成功！");
          			   window.location.herf="U('Ajax/index')";
          			}else{
          			    alert("留言失败！");
                    return false;			   
          			}
             }
      });
     });
</script>
</html>