<?php
namespace Home\Controller;
use Think\Controller;
class AjaxController extends BaseController {

    public function index(){
		//ajax
        if($_POST){			
			$arr = array(
			  'username'=>I('username'),
			  'title'   =>I('title'),
			  'desc'    =>I('desc')
			);
			$res = M("user")->add($arr);
			$status = 0;
			if(!empty($res)){
				$status = 1;
			}
			die(json_encode($status));
		}
		$list = M('user')->select();
        $this->assign('list',$list);
        $this->display();
         }
       
    }
