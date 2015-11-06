<?php
namespace Home\Controller;
use Think\Controller;
class AjaxController extends BaseController {

    public function index(){

        if($_POST){
          $arr = array(
              'username'=>I('username'),
              'title'   =>I('title'),
              'desc'    =>I('desc')
              );
        }
        M("user")->where('id')->add($arr);
        $list = M('user')->where('id')->select();
        $this->assign('list',$list);
        $this->display();
         }
       
    }
