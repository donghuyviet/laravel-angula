<?php
	//mở composer
// thêm vào "autoload "
// "files": [
// 	  "app/function/function.php"
// ]
// chạy cmd : composer dumpautoload

function changTitle($str, $strSymbol='-',$case=MB_CASE_LOWER){
	$str = trim($str);
	if($str=="") return "";
	$str = str_replace('"','',$str);
	$str = str_replace("'",'',$str);
	$str = stripUnicode($str);
	$str = mb_convert_case($str, $case, 'utf-8');
	$str = preg_replace('/[\W|_]+/',$strSymbol, $str);
	return $str;
}
function stripUnicode($str){
  if(!$str) return false;
   $unicode = array(
      'a'=>'á|à|ả|ã|ạ|ă|ắ|ặ|ằ|ẳ|ẵ|â|ấ|ầ|ẩ|ẫ|ậ',
      'd'=>'đ',
      'e'=>'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',
      'i'=>'í|ì|ỉ|ĩ|ị',
      'o'=>'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',
      'u'=>'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',
      'y'=>'ý|ỳ|ỷ|ỹ|ỵ',
   );
foreach($unicode as $nonUnicode=>$uni) $str = preg_replace("/($uni)/i",$nonUnicode,$str);
return $str;
}
?>