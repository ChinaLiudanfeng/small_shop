<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class alipay extends Controller
{
    public $app_id;
    public $gate_way;
    public $notify_url;
    public $return_url;
    public $rsaPrivateKeyFilePath = '';  //路径
    public $aliPubKey = '';  //路径
    public $privateKey = 'MIIEowIBAAKCAQEAuqCmCW+Fiwv7adLYZ7YUi7R4VHXmCYAmlgiZlz5VAJe6oWa2vaV44O360pFe3arzBTKYWUbe4t77998mr3xlEQ9UO8UFzER+C4pARNAxA9YRJ+FDqjItUOYZFPJffzUvgUxWK4h1WBr2i2J7Z/dJnQ6R12HtPVKuXBj9ioJBp0gZuF+70sgiD6C/31VAHAhZnaZ0GskwjKylJ4u3LCnqF2qyQH28JPxOVFaaUpLrTgzp6S/Mf4smeHX3kajPQ33n2tmiidSjXrmHpRCGGeE9n4XM42/cG6fI6ezAo5aDvlkrBKmNv+J6DyVdVnKWMTKDeUGG+Am/LXvEVmjzTUVY1wIDAQABAoIBABtRUpyE934/9cAqvcSIkX9Vnlt2moJ/gKZrgdfypsycaRQhDdS6uPPrwdA6uTEnScVT/5rp1cxNqYJB5s6/Hagen0zUbSHWUMDtrrSj6NjP59j3j0kFaT6zP66iP7pGFbsOanqa0dpgr//9HWU9fEgCDvUA/5H/XUhb3Bj/Mg8DLZnasxPUbzhRujSYUU3qGsIpczabSjJ/E2wzeLNWxfcKIurCII0Rc8L4ls8Xl2atAPlRUY9pz3cVGEi3rosuqhI7Q06UnEAP/tsI4uVxhqqd7oDrDTff/6/XqmkSb3yY1NiQBjb7czCp0VLy6HaFlrFmiCItRHGbayG/fVH0fhECgYEA7DYdihJr11V1i1HducSscZoAEcJPtHwPiEhNCiry3akQtJoMtkEW4aMafv+66QoOLAUvdLOk9UKTly1pPsBkx3qIEmMUHQcKFCWY4RSBVPBYOhGrwq3u+Ac+ms97aatcga4+jr3Ypnzr2lfutSKgtQuv74HlcZfJSD6sCBd8us8CgYEAykMjSytOCklr2g0lYzdTIqL15hfvH09D9OOLS1atlIkI8js3KMOGnQJ1P2KT8jGEeawc36mmp+L0nrxCkrQ4xPqis4PBYhyK1wlO3rv5/d6HqaPZ3x8Sd2Jq1q860RY1HhQvu3BC0stVL3/iH5/Y8iJjTbxJ96HQ/nMzkEB9Y3kCgYA1z7Y3CC9NJQjcLlBGy8lFMAIoCY5C3ahkMaRrVpFxcdx+aEHRG07tJE0a9YNNJ59G4/+FpI9F2F7rJ8s8InRTBVUOa0ffvQTMxivnytYT1ZUj1Xa9qQYxtuTKO84vqnwuhtV1i0ZZ10ebvECDP1pBJGJ2O69bi2qtbKmgRkmB/QKBgQC+deQ5N4kgVK0TwsdPG1zUw+GMD0OkFw8l/lM/2VpRAY2EFFDHuP78wMDJtDkempRlwrXZw7ZkZ2n0Q9Dotn6ytlUZd9tVWQ1AmspDIX2yGqdjDiDuYyMPeoSirpVTKHdSYK3l8jtqpgAMX37+SpaOw+UA4WpBnoXf5XlLv/6S+QKBgFHRcKwxGG0gLcXAz+5O9Hu+Zy3m5ZYwYZeq625ck9Sdl5l2sRRmFN1FCNWnhETg13IR/LQzO7+KVpmwHR6mRe9kB9jsXrpR3SxttC/avuqXwe/yz/bPps9SwPlRvEV5atJ4i4swHbIzCoU7yXBD/2JvihAcYZbeAz27ALHniCR6';
    public $publicKey = 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuqCmCW+Fiwv7adLYZ7YUi7R4VHXmCYAmlgiZlz5VAJe6oWa2vaV44O360pFe3arzBTKYWUbe4t77998mr3xlEQ9UO8UFzER+C4pARNAxA9YRJ+FDqjItUOYZFPJffzUvgUxWK4h1WBr2i2J7Z/dJnQ6R12HtPVKuXBj9ioJBp0gZuF+70sgiD6C/31VAHAhZnaZ0GskwjKylJ4u3LCnqF2qyQH28JPxOVFaaUpLrTgzp6S/Mf4smeHX3kajPQ33n2tmiidSjXrmHpRCGGeE9n4XM42/cG6fI6ezAo5aDvlkrBKmNv+J6DyVdVnKWMTKDeUGG+Am/LXvEVmjzTUVY1wIDAQAB';
    public function __construct()
    {
        $this->app_id = '2016093000631674';
        $this->gate_way = 'https://openapi.alipaydev.com/gateway.do';
        $this->notify_url = env('APP_URL').'asyn_url';
        $this->return_url = env('APP_URL').'home/url';
    }


    /**
     * 订单支付
     * @param $oid
     */
    public function pay(Request $request)
    {
        $order = $request->all();
        $sum = $order['sum'];
        $oid = $order['oid'];
        // file_put_contents(storage_path('logs/alipay.log'),"\nqqqq\n",FILE_APPEND);
        // die();
        //验证订单状态 是否已支付 是否是有效订单
        //$order_info = OrderModel::where(['oid'=>$oid])->first()->toArray();
        //判断订单是否已被支付
        // if($order_info['is_pay']==1){
        //     die("订单已支付，请勿重复支付");
        // }
        //判断订单是否已被删除
        // if($order_info['is_delete']==1){
        //     die("订单已被删除，无法支付");
        // }
        // $oid = time().mt_rand(1000,1111);  //订单编号
        //业务参数
        $bizcont = [
            'subject'           => 'MyShop--' .$oid,
            'out_trade_no'      => $oid,
            'total_amount'      => $sum,
            'product_code'      => 'FAST_INSTANT_TRADE_PAY',
        ];
        //公共参数
        $data = [
            'app_id'   => $this->app_id,
            'method'   => 'alipay.trade.page.pay',
            'format'   => 'JSON',
            'charset'   => 'utf-8',
            'sign_type'   => 'RSA2',
            'timestamp'   => date('Y-m-d H:i:s'),
            'version'   => '1.0',
            'notify_url'   => $this->notify_url,        //异步通知地址
            'return_url'   => $this->return_url,        // 同步通知地址
            'biz_content'   => json_encode($bizcont),
        ];
        //签名
        $sign = $this->rsaSign($data);
        $data['sign'] = $sign;
        $param_str = '?';
        foreach($data as $k=>$v){
            $param_str .= $k.'='.urlencode($v) . '&';
        }
        $url = rtrim($param_str,'&');
        $url = $this->gate_way . $url;

        header("Location:".$url);
    }


    public function rsaSign($params) {
        return $this->sign($this->getSignContent($params));
    }
    protected function sign($data) {
        if($this->checkEmpty($this->rsaPrivateKeyFilePath)){
            $priKey=$this->privateKey;
            $res = "-----BEGIN RSA PRIVATE KEY-----\n" .
                wordwrap($priKey, 64, "\n", true) .
                "\n-----END RSA PRIVATE KEY-----";
        }else{
            $priKey = file_get_contents($this->rsaPrivateKeyFilePath);
            $res = openssl_get_privatekey($priKey);
        }

        ($res) or die('您使用的私钥格式错误，请检查RSA私钥配置');
        openssl_sign($data, $sign, $res, OPENSSL_ALGO_SHA256);
        if(!$this->checkEmpty($this->rsaPrivateKeyFilePath)){
            openssl_free_key($res);
        }
        $sign = base64_encode($sign);
        return $sign;
    }
    public function getSignContent($params) {
        ksort($params);
        $stringToBeSigned = "";
        $i = 0;
        foreach ($params as $k => $v) {
            if (false === $this->checkEmpty($v) && "@" != substr($v, 0, 1)) {
                // 转换成目标字符集
                $v = $this->characet($v, 'UTF-8');
                if ($i == 0) {
                    $stringToBeSigned .= "$k" . "=" . "$v";
                } else {
                    $stringToBeSigned .= "&" . "$k" . "=" . "$v";
                }
                $i++;
            }
        }
        unset ($k, $v);
        return $stringToBeSigned;
    }
    protected function checkEmpty($value) {
        if (!isset($value))
            return true;
        if ($value === null)
            return true;
        if (trim($value) === "")
            return true;
        return false;
    }
    /**
     * 转换字符集编码
     * @param $data
     * @param $targetCharset
     * @return string
     */
    function characet($data, $targetCharset) {
        if (!empty($data)) {
            $fileType = 'UTF-8';
            if (strcasecmp($fileType, $targetCharset) != 0) {
                $data = mb_convert_encoding($data, $targetCharset, $fileType);
            }
        }
        return $data;
    }
    /**
     * 支付宝同步通知回调
     */
    public function aliReturn()
    {
//        $oid = $_GET['out_trade_no'];
        //修改订单状态
//        DB::table('order')->where('oid',$oid)->update([
//            'status'=>1,
//        ]);

        header("Refresh:2;url=/home/orderlist");
        echo "订单： ".$_GET['out_trade_no'] . ' 支付成功，正在跳转';

//        echo '<pre>';print_r($_GET);echo '</pre>';die;
//        //验签 支付宝的公钥

//
//        //验证交易状态
////        if($_GET['']){
////
////        }

//      if(!$this->verify($_GET)){
//             die('簽名失敗');
//      }

//
//        //处理订单逻辑
//        $this->dealOrder($_GET);
    }
    /**
     * 支付宝异步通知
     */

//    public function aaa(Request $request){
//        $data="写入成功";
//        $file=env('APP_URL')."public/notify.log";
//        if ($data){
//            file_put_contents($file,print_r($data,true),FILE_APPEND);
//        }
//    }


    public function asyn_url(Request $request)
    {
        //接收支付宝异步通知
        $data=$request->all();
        $file=env('APP_URL')."/public/notify.log";
        if (empty($data)){
            file_put_contents($file,'no data',FILE_APPEND);
        }else{
            file_put_contents($file,print_r($data,true),FILE_APPEND);
        }
//        $data = json_encode($_POST);
//        $log_str = '>>>> ' . date('Y-m-d H:i:s') . $data . "<<<<\n\n";
//        //记录日志
//        file_put_contents(storage_path('logs/alipay.log'), $log_str, FILE_APPEND);
//        //验签
//        $res = $this->verify($_POST);
//        $log_str = '>>>> ' . date('Y-m-d H:i:s');
//        if ($res) {
//            //记录日志 验签失败
//            $log_str .= " Sign Failed!<<<<< \n\n";
//            file_put_contents(storage_path('logs/alipay.log'), $log_str, FILE_APPEND);
//        } else {
//            $log_str .= " Sign OK!<<<<< \n\n";
//            file_put_contents(storage_path('logs/alipay.log'), $log_str, FILE_APPEND);
//            //验证订单交易状态
//            if($_POST['trade_status']=='TRADE_SUCCESS'){
////                 DB::connection('myshop')->beginTransaction(); //开启事务
//                //更新订单状态
//                $oid = $_POST['out_trade_no'];     //商户订单号
//                $info = [
//                    'pay_time'      => strtotime($_POST['gmt_payment']), //支付时间
//                    'pay_state'     => 1
//                ];
//                $order_result = DB::table('order')->where(['oid'=>$oid])->update($info);
//
//                //清理购物车
////                 $uid = session('userid');
//                $cart_result = DB::table('cart')->where('uid',3)->delete();
//
//                if($cart_result && $order_result){
//                    file_put_contents(storage_path('logs/alipay.log'),"订单：".$oid."==>支付成功",FILE_APPEND);
////                     DB::connection('myshop')->commit();
//                }else{
//                    file_put_contents(storage_path('logs/alipay.log'),"订单：".$oid."==>支付失败",FILE_APPEND);
////                     DB::connection('myshop')->rollBack();
//                }
//            }
//        }
//
//        echo 'success';

    }


    //验签
    function verify($params) {
        $sign = $params['sign'];

        if($this->checkEmpty($this->aliPubKey)){
            $pubKey= $this->publicKey;
            $res = "-----BEGIN PUBLIC KEY-----\n" .
                wordwrap($pubKey, 64, "\n", true) .
                "\n-----END PUBLIC KEY-----";
        }else {
            //读取公钥文件
            $pubKey = file_get_contents($this->aliPubKey);
            //转换为openssl格式密钥
            $res = openssl_get_publickey($pubKey);
        }



        ($res) or die('支付宝RSA公钥错误。请检查公钥文件格式是否正确');
        //调用openssl内置方法验签，返回bool值
        $result = (bool)openssl_verify($this->getSignContent($params), base64_decode($sign), $res, OPENSSL_ALGO_SHA256);

        if(!$this->checkEmpty($this->aliPubKey)){
            openssl_free_key($res);
        }
        return $result;
    }
    /**
     * 处理订单逻辑 更新订单 支付状态 更新订单支付金额 支付时间
     * @param $data
     */
    public function dealOrder($data)
    {
        //加积分
        //减库存
    }

}
