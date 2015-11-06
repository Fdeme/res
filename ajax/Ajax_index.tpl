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
  <form action="" method="post">
     <table style="float:left;">
       <tr>
         <td>姓名:</td>
         <td><input type="text" name="username"></td>
       </tr>
       <tr>
         <td>标题:</td>
         <td><input type="text" name="title"></td>
       </tr>
       <tr>
         <td>内容</td>
         <td><textarea name="desc" cols="30" rows="5"></textarea></td>
       </tr>      
     </table>
     <button style="margin-right:10px; float:right;">提交</button>
  </form>   
</div>     
</body>
<script>
     $('button').click(function(){
      $.ajax({
         url:{"U('Ajax/index')"},var_dump($_POST);
         type:'post',
         datatype:'json',
         data:{
          'name':username,
          'title':title,
          'desc':desc
         },
         success.function(data){


         }
      });
     });
</script>
</html>