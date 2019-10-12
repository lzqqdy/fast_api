/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : base

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 12/10/2019 10:16:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for db_abnormal
-- ----------------------------
DROP TABLE IF EXISTS `db_abnormal`;
CREATE TABLE `db_abnormal`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `ab_class` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '异常抛出的类名(错误类型)',
  `ab_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '异常日期 ',
  `ab_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '异常内容',
  `deletetime` int(10) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date`(`ab_date`) USING BTREE COMMENT '日期'
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '异常上报表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of db_abnormal
-- ----------------------------
INSERT INTO `db_abnormal` VALUES (1, 'think\\exception\\ErrorException', '2019-09-24 10:02:21', '{\"name\":\"think\\\\exception\\\\ErrorException\",\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\application\\\\api\\\\controller\\\\Index.php\",\"line\":48,\"message\":\"未定义变量: b\",\"trace\":[{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\application\\\\api\\\\controller\\\\Index.php\",\"line\":48,\"function\":\"appError\",\"class\":\"think\\\\Error\",\"type\":\"::\",\"args\":[8,\"Undefined variable: b\",\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\application\\\\api\\\\controller\\\\Index.php\",48,[]]},{\"function\":\"errorException\",\"class\":\"app\\\\api\\\\controller\\\\Index\",\"type\":\"->\",\"args\":[]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\App.php\",\"line\":343,\"function\":\"invokeArgs\",\"class\":\"ReflectionMethod\",\"type\":\"->\",\"args\":[{},[]]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\App.php\",\"line\":611,\"function\":\"invokeMethod\",\"class\":\"think\\\\App\",\"type\":\"::\",\"args\":[[{},\"errorException\"],[]]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\App.php\",\"line\":456,\"function\":\"module\",\"class\":\"think\\\\App\",\"type\":\"::\",\"args\":[[\"api\",\"Index\",\"errorException\"],{\"app_host\":\"\",\"app_debug\":false,\"app_trace\":false,\"app_status\":\"\",\"app_multi_module\":true,\"auto_bind_module\":false,\"root_namespace\":[],\"extra_file_list\":[\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\helper.php\"],\"default_return_type\":\"html\",\"default_ajax_return\":\"json\",\"default_jsonp_handler\":\"jsonpReturn\",\"var_jsonp_handler\":\"callback\",\"default_timezone\":\"PRC\",\"lang_switch_on\":false,\"default_filter\":\"\",\"default_lang\":\"zh-cn\",\"class_suffix\":false,\"controller_suffix\":false,\"default_module\":\"api\",\"deny_module_list\":[\"common\"],\"default_controller\":\"Index\",\"default_action\":\"index\",\"default_validate\":\"\",\"empty_controller\":\"Error\",\"use_action_prefix\":false,\"action_suffix\":\"\",\"controller_auto_search\":true,\"var_pathinfo\":\"s\",\"pathinfo_fetch\":[\"ORIG_PATH_INFO\",\"REDIRECT_PATH_INFO\",\"REDIRECT_URL\"],\"pathinfo_depr\":\"\\/\",\"https_agent_name\":\"\",\"url_html_suffix\":\"html\",\"url_common_param\":false,\"url_param_type\":0,\"url_route_on\":true,\"route_config_file\":[\"route\"],\"route_complete_match\":false,\"url_route_must\":false,\"url_domain_deploy\":false,\"url_domain_root\":\"\",\"url_convert\":true,\"url_controller_layer\":\"controller\",\"var_method\":\"_method\",\"var_ajax\":\"_ajax\",\"var_pjax\":\"_pjax\",\"request_cache\":false,\"request_cache_expire\":null,\"request_cache_except\":[],\"template\":{\"type\":\"Think\",\"view_path\":\"\",\"view_suffix\":\"html\",\"view_depr\":\"\\\\\",\"tpl_begin\":\"{\",\"tpl_end\":\"}\",\"taglib_begin\":\"{\",\"taglib_end\":\"}\",\"tpl_cache\":true},\"view_replace_str\":{\"__PUBLIC__\":\"\",\"__ROOT__\":\"\",\"__CDN__\":\"\"},\"dispatch_success_tmpl\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\/..\\/application\\/common\\\\view\\\\tpl\\\\dispatch_jump.tpl\",\"dispatch_error_tmpl\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\/..\\/application\\/common\\\\view\\\\tpl\\\\dispatch_jump.tpl\",\"exception_tmpl\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\/..\\/application\\/common\\\\view\\\\tpl\\\\think_exception.tpl\",\"error_message\":\"你所浏览的页面暂时无法访问\",\"show_error_msg\":false,\"exception_handle\":\"\\\\app\\\\api\\\\library\\\\ExceptionHandle\",\"record_trace\":false,\"log\":{\"type\":\"File\",\"path\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\runtime\\\\log\\\\\",\"level\":[\",\"]},\"trace\":{\"type\":\"Html\"},\"cache\":{\"type\":\"File\",\"path\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\runtime\\\\cache\\\\\",\"prefix\":\"\",\"expire\":0},\"session\":{\"id\":\"\",\"var_session_id\":\"\",\"prefix\":\"think\",\"type\":\"\",\"auto_start\":true},\"cookie\":{\"prefix\":\"\",\"expire\":0,\"path\":\"\\/\",\"domain\":\"\",\"secure\":false,\"httponly\":\"\",\"setcookie\":true},\"database\":{\"type\":\"mysql\",\"dsn\":\"\",\"hostname\":\"127.0.0.1\",\"database\":\"base\",\"username\":\"root\",\"password\":\"root\",\"hostport\":\"\",\"params\":[],\"charset\":\"utf8mb4\",\"prefix\":\"db_\",\"debug\":true,\"deploy\":0,\"rw_separate\":false,\"master_num\":1,\"slave_no\":\"\",\"fields_strict\":true,\"resultset_type\":\"array\",\"auto_timestamp\":false,\"datetime_format\":false,\"sql_explain\":false},\"paginate\":{\"type\":\"bootstrap\",\"var_page\":\"page\",\"list_rows\":15},\"console\":{\"name\":\"Think Console\",\"version\":\"0.1\",\"user\":null},\"app_namespace\":\"app\",\"captcha\":{\"codeSet\":\"2345678abcdefhijkmnpqrstuvwxyzABCDEFGHJKLMNPQRTUVWXY\",\"fontSize\":18,\"useCurve\":false,\"useZh\":false,\"imageH\":40,\"imageW\":130,\"length\":4,\"reset\":true},\"token\":{\"type\":\"Mysql\",\"key\":\"i3d6o32wo8fvs1fvdpwens\",\"hashalgo\":\"ripemd160\",\"expire\":0},\"fastadmin\":{\"usercenter\":false,\"login_captcha\":true,\"login_failure_retry\":true,\"login_unique\":false,\"login_background\":\"\\/assets\\/img\\/loginbg.jpg\",\"multiplenav\":false,\"checkupdate\":false,\"version\":\"1.0.0.20190705_beta\",\"api_url\":\"https:\\/\\/api.fastadmin.net\"},\"addons\":{\"autoload\":false,\"hooks\":{\"action_begin\":[\"geetest\"],\"config_init\":[\"geetest\"],\"app_init\":[\"log\"],\"admin_login_init\":[\"loginbg\"]},\"route\":[]},\"queue\":{\"connector\":\"Sync\"},\"site\":{\"name\":\"FastAdmin\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"},\"fixedpage\":\"dashboard\",\"categorytype\":{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"},\"configgroup\":{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"WeChat\":\"小程序配置\",\"Payment\":\"支付配置\"},\"mail_type\":\"1\",\"mail_smtp_host\":\"smtp.qq.com\",\"mail_smtp_port\":\"465\",\"mail_smtp_user\":\"10000\",\"mail_smtp_pass\":\"password\",\"mail_verify_type\":\"2\",\"mail_from\":\"10000@qq.com\",\"app_id\":\"1\",\"app_secret\":\"1\",\"app_mch_id\":\"1\",\"app_key\":\"1\"},\"upload\":{\"uploadurl\":\"ajax\\/upload\",\"cdnurl\":\"\",\"savekey\":\"\\/uploads\\/{year}{mon}{day}\\/{filemd5}{.suffix}\",\"maxsize\":\"10mb\",\"mimetype\":\"jpg,png,bmp,jpeg,gif,zip,rar,xls,xlsx\",\"multiple\":false},\"notify_url\":\"\\/notify\"},false]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\App.php\",\"line\":139,\"function\":\"exec\",\"class\":\"think\\\\App\",\"type\":\"::\",\"args\":[{\"type\":\"module\",\"module\":[\"api\",\"Index\",\"errorException\"],\"convert\":false},{\"app_host\":\"\",\"app_debug\":false,\"app_trace\":false,\"app_status\":\"\",\"app_multi_module\":true,\"auto_bind_module\":false,\"root_namespace\":[],\"extra_file_list\":[\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\helper.php\"],\"default_return_type\":\"html\",\"default_ajax_return\":\"json\",\"default_jsonp_handler\":\"jsonpReturn\",\"var_jsonp_handler\":\"callback\",\"default_timezone\":\"PRC\",\"lang_switch_on\":false,\"default_filter\":\"\",\"default_lang\":\"zh-cn\",\"class_suffix\":false,\"controller_suffix\":false,\"default_module\":\"api\",\"deny_module_list\":[\"common\"],\"default_controller\":\"Index\",\"default_action\":\"index\",\"default_validate\":\"\",\"empty_controller\":\"Error\",\"use_action_prefix\":false,\"action_suffix\":\"\",\"controller_auto_search\":true,\"var_pathinfo\":\"s\",\"pathinfo_fetch\":[\"ORIG_PATH_INFO\",\"REDIRECT_PATH_INFO\",\"REDIRECT_URL\"],\"pathinfo_depr\":\"\\/\",\"https_agent_name\":\"\",\"url_html_suffix\":\"html\",\"url_common_param\":false,\"url_param_type\":0,\"url_route_on\":true,\"route_config_file\":[\"route\"],\"route_complete_match\":false,\"url_route_must\":false,\"url_domain_deploy\":false,\"url_domain_root\":\"\",\"url_convert\":true,\"url_controller_layer\":\"controller\",\"var_method\":\"_method\",\"var_ajax\":\"_ajax\",\"var_pjax\":\"_pjax\",\"request_cache\":false,\"request_cache_expire\":null,\"request_cache_except\":[],\"template\":{\"type\":\"Think\",\"view_path\":\"\",\"view_suffix\":\"html\",\"view_depr\":\"\\\\\",\"tpl_begin\":\"{\",\"tpl_end\":\"}\",\"taglib_begin\":\"{\",\"taglib_end\":\"}\",\"tpl_cache\":true},\"view_replace_str\":{\"__PUBLIC__\":\"\",\"__ROOT__\":\"\",\"__CDN__\":\"\"},\"dispatch_success_tmpl\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\/..\\/application\\/common\\\\view\\\\tpl\\\\dispatch_jump.tpl\",\"dispatch_error_tmpl\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\/..\\/application\\/common\\\\view\\\\tpl\\\\dispatch_jump.tpl\",\"exception_tmpl\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\/..\\/application\\/common\\\\view\\\\tpl\\\\think_exception.tpl\",\"error_message\":\"你所浏览的页面暂时无法访问\",\"show_error_msg\":false,\"exception_handle\":\"\",\"record_trace\":false,\"log\":{\"type\":\"File\",\"path\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\runtime\\\\log\\\\\",\"level\":[\",\"]},\"trace\":{\"type\":\"Html\"},\"cache\":{\"type\":\"File\",\"path\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\runtime\\\\cache\\\\\",\"prefix\":\"\",\"expire\":0},\"session\":{\"id\":\"\",\"var_session_id\":\"\",\"prefix\":\"think\",\"type\":\"\",\"auto_start\":true},\"cookie\":{\"prefix\":\"\",\"expire\":0,\"path\":\"\\/\",\"domain\":\"\",\"secure\":false,\"httponly\":\"\",\"setcookie\":true},\"database\":{\"type\":\"mysql\",\"dsn\":\"\",\"hostname\":\"127.0.0.1\",\"database\":\"base\",\"username\":\"root\",\"password\":\"root\",\"hostport\":\"\",\"params\":[],\"charset\":\"utf8mb4\",\"prefix\":\"db_\",\"debug\":true,\"deploy\":0,\"rw_separate\":false,\"master_num\":1,\"slave_no\":\"\",\"fields_strict\":true,\"resultset_type\":\"array\",\"auto_timestamp\":false,\"datetime_format\":false,\"sql_explain\":false},\"paginate\":{\"type\":\"bootstrap\",\"var_page\":\"page\",\"list_rows\":15},\"console\":{\"name\":\"Think Console\",\"version\":\"0.1\",\"user\":null},\"app_namespace\":\"app\",\"captcha\":{\"codeSet\":\"2345678abcdefhijkmnpqrstuvwxyzABCDEFGHJKLMNPQRTUVWXY\",\"fontSize\":18,\"useCurve\":false,\"useZh\":false,\"imageH\":40,\"imageW\":130,\"length\":4,\"reset\":true},\"token\":{\"type\":\"Mysql\",\"key\":\"i3d6o32wo8fvs1fvdpwens\",\"hashalgo\":\"ripemd160\",\"expire\":0},\"fastadmin\":{\"usercenter\":false,\"login_captcha\":true,\"login_failure_retry\":true,\"login_unique\":false,\"login_background\":\"\\/assets\\/img\\/loginbg.jpg\",\"multiplenav\":false,\"checkupdate\":false,\"version\":\"1.0.0.20190705_beta\",\"api_url\":\"https:\\/\\/api.fastadmin.net\"},\"addons\":{\"autoload\":false,\"hooks\":{\"action_begin\":[\"geetest\"],\"config_init\":[\"geetest\"],\"app_init\":[\"log\"],\"admin_login_init\":[\"loginbg\"]},\"route\":[]},\"queue\":{\"connector\":\"Sync\"},\"site\":{\"name\":\"FastAdmin\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"},\"fixedpage\":\"dashboard\",\"categorytype\":{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"},\"configgroup\":{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"WeChat\":\"小程序配置\",\"Payment\":\"支付配置\"},\"mail_type\":\"1\",\"mail_smtp_host\":\"smtp.qq.com\",\"mail_smtp_port\":\"465\",\"mail_smtp_user\":\"10000\",\"mail_smtp_pass\":\"password\",\"mail_verify_type\":\"2\",\"mail_from\":\"10000@qq.com\",\"app_id\":\"1\",\"app_secret\":\"1\",\"app_mch_id\":\"1\",\"app_key\":\"1\"},\"upload\":{\"uploadurl\":\"ajax\\/upload\",\"cdnurl\":\"\",\"savekey\":\"\\/uploads\\/{year}{mon}{day}\\/{filemd5}{.suffix}\",\"maxsize\":\"10mb\",\"mimetype\":\"jpg,png,bmp,jpeg,gif,zip,rar,xls,xlsx\",\"multiple\":false}}]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\start.php\",\"line\":19,\"function\":\"run\",\"class\":\"think\\\\App\",\"type\":\"::\",\"args\":[]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\\\index.php\",\"line\":24,\"args\":[\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\start.php\"],\"function\":\"require\"}],\"code\":8,\"source\":{\"first\":39,\"source\":[\"    public function errorException()\\r\\n\",\"    {\\r\\n\",\"\\/\\/        try {\\r\\n\",\"\\/\\/            \\/\\/todo\\r\\n\",\"\\/\\/            \\/\\/发生代码级别的error\\r\\n\",\"\\/\\/            echo $a;\\r\\n\",\"\\/\\/        } catch (\\\\Exception $e) {\\r\\n\",\"\\/\\/\\r\\n\",\"\\/\\/        }\\r\\n\",\"        $a = $b + 1;\\r\\n\",\"        echo $a;\\r\\n\",\"    }\\r\\n\",\"\\r\\n\",\"\\r\\n\",\"    \\/**\\r\\n\",\"     * 首页\\r\\n\",\"     *\\r\\n\",\"     *\\/\\r\\n\",\"    public function index()\\r\\n\"]},\"datas\":[],\"tables\":{\"GET Data\":[],\"POST Data\":[],\"Files\":[],\"Cookies\":{\"_ga\":\"GA1.2.1446302998.1563933455\"},\"Session\":[],\"Server\\/Request Data\":{\"PATH\":\"C:\\\\Program Files (x86)\\\\NetSarang\\\\Xshell 6\\\\;C:\\\\Program Files (x86)\\\\Common Files\\\\NetSarang;C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files (x86)\\\\Intel\\\\iCLS Client\\\\;C:\\\\Program Files\\\\Intel\\\\iCLS Client\\\\;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\NVIDIA Corporation\\\\PhysX\\\\Common;C:\\\\Program Files (x86)\\\\Intel\\\\Intel(R) Management Engine Components\\\\DAL;C:\\\\Program Files\\\\Intel\\\\Intel(R) Management Engine Components\\\\DAL;C:\\\\Program Files (x86)\\\\Intel\\\\Intel(R) Management Engine Components\\\\IPT;C:\\\\Program Files\\\\Intel\\\\Intel(R) Management Engine Components\\\\IPT;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;F:\\\\phpStudy\\\\PHPTutorial\\\\php\\\\php-7.2.1-nts;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\Intel\\\\WiFi\\\\bin\\\\;C:\\\\Program Files\\\\Common Files\\\\Intel\\\\WirelessCommon\\\\;C:\\\\Program Files\\\\MacType;F:\\\\Go\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;C:\\\\Users\\\\pengq\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps;F:\\\\PHPTutorial\\\\php\\\\php-7.2.1-nts\\\\php.exe;C:\\\\Users\\\\pengq\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\pengq\\\\AppData\\\\Roaming\\\\Composer\\\\vendor\\\\bin;C:\\\\Users\\\\pengq\\\\go\\\\bin;C:\\\\Users\\\\pengq\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps;C:\\\\Users\\\\pengq\\\\AppData\\\\Local\\\\Programs\\\\Fiddler;C:\\\\Users\\\\pengq\\\\AppData\\\\Local\\\\Programs\\\\Microsoft VS Code\\\\bin\",\"SYSTEMROOT\":\"C:\\\\WINDOWS\",\"COMSPEC\":\"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\",\"PATHEXT\":\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\",\"WINDIR\":\"C:\\\\WINDOWS\",\"PHP_FCGI_MAX_REQUESTS\":\"1000\",\"PHPRC\":\"F:\\/phpStudy\\/PHPTutorial\\/php\\/php-7.2.1-nts\\/\",\"_FCGI_SHUTDOWN_EVENT_\":\"2340\",\"SCRIPT_NAME\":\"\\/index.php\",\"REQUEST_URI\":\"\\/api\\/error\",\"QUERY_STRING\":\"\",\"REQUEST_METHOD\":\"GET\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"GATEWAY_INTERFACE\":\"CGI\\/1.1\",\"REDIRECT_URL\":\"\\/api\\/error\",\"REMOTE_PORT\":\"57673\",\"SCRIPT_FILENAME\":\"F:\\/phpStudy\\/PHPTutorial\\/WWW\\/fast_api\\/public\\/index.php\",\"SERVER_ADMIN\":\"admin@php.cn\",\"CONTEXT_DOCUMENT_ROOT\":\"F:\\/phpStudy\\/PHPTutorial\\/WWW\\/fast_api\\/public\",\"CONTEXT_PREFIX\":\"\",\"REQUEST_SCHEME\":\"http\",\"DOCUMENT_ROOT\":\"F:\\/phpStudy\\/PHPTutorial\\/WWW\\/fast_api\\/public\",\"REMOTE_ADDR\":\"127.0.0.1\",\"SERVER_PORT\":\"80\",\"SERVER_ADDR\":\"127.0.0.1\",\"SERVER_NAME\":\"base.com\",\"SERVER_SOFTWARE\":\"Apache\\/2.4.23 (Win32) OpenSSL\\/1.0.2j mod_fcgid\\/2.3.9\",\"SERVER_SIGNATURE\":\"\",\"SystemRoot\":\"C:\\\\WINDOWS\",\"HTTP_COOKIE\":\"_ga=GA1.2.1446302998.1563933455\",\"HTTP_ACCEPT_LANGUAGE\":\"en,zh-CN;q=0.9,zh;q=0.8,en-GB;q=0.7,en-US;q=0.6\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate\",\"HTTP_ACCEPT\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/76.0.3809.132 Safari\\/537.36\",\"HTTP_UPGRADE_INSECURE_REQUESTS\":\"1\",\"HTTP_CACHE_CONTROL\":\"max-age=0\",\"HTTP_CONNECTION\":\"close\",\"HTTP_HOST\":\"base.com\",\"REDIRECT_STATUS\":\"200\",\"REDIRECT_PATH_INFO\":\"api\\/error\",\"FCGI_ROLE\":\"RESPONDER\",\"PHP_SELF\":\"\\/index.php\",\"REQUEST_TIME_FLOAT\":1569290541.791585,\"REQUEST_TIME\":1569290541,\"PATH_INFO\":\"api\\/error\"},\"Environment Variables\":[]},\"echo\":\"\"}', NULL);
INSERT INTO `db_abnormal` VALUES (2, 'think\\exception\\ErrorException', '2019-09-24 10:03:40', '{\"name\":\"think\\\\exception\\\\ErrorException\",\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\application\\\\api\\\\controller\\\\Index.php\",\"line\":48,\"message\":\"未定义变量: b\",\"trace\":[{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\application\\\\api\\\\controller\\\\Index.php\",\"line\":48,\"function\":\"appError\",\"class\":\"think\\\\Error\",\"type\":\"::\",\"args\":[8,\"Undefined variable: b\",\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\application\\\\api\\\\controller\\\\Index.php\",48,[]]},{\"function\":\"errorException\",\"class\":\"app\\\\api\\\\controller\\\\Index\",\"type\":\"->\",\"args\":[]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\App.php\",\"line\":343,\"function\":\"invokeArgs\",\"class\":\"ReflectionMethod\",\"type\":\"->\",\"args\":[{},[]]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\App.php\",\"line\":611,\"function\":\"invokeMethod\",\"class\":\"think\\\\App\",\"type\":\"::\",\"args\":[[{},\"errorException\"],[]]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\App.php\",\"line\":456,\"function\":\"module\",\"class\":\"think\\\\App\",\"type\":\"::\",\"args\":[[\"api\",\"Index\",\"errorException\"],{\"app_host\":\"\",\"app_debug\":false,\"app_trace\":false,\"app_status\":\"\",\"app_multi_module\":true,\"auto_bind_module\":false,\"root_namespace\":[],\"extra_file_list\":[\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\helper.php\"],\"default_return_type\":\"html\",\"default_ajax_return\":\"json\",\"default_jsonp_handler\":\"jsonpReturn\",\"var_jsonp_handler\":\"callback\",\"default_timezone\":\"PRC\",\"lang_switch_on\":false,\"default_filter\":\"\",\"default_lang\":\"zh-cn\",\"class_suffix\":false,\"controller_suffix\":false,\"default_module\":\"api\",\"deny_module_list\":[\"common\"],\"default_controller\":\"Index\",\"default_action\":\"index\",\"default_validate\":\"\",\"empty_controller\":\"Error\",\"use_action_prefix\":false,\"action_suffix\":\"\",\"controller_auto_search\":true,\"var_pathinfo\":\"s\",\"pathinfo_fetch\":[\"ORIG_PATH_INFO\",\"REDIRECT_PATH_INFO\",\"REDIRECT_URL\"],\"pathinfo_depr\":\"\\/\",\"https_agent_name\":\"\",\"url_html_suffix\":\"html\",\"url_common_param\":false,\"url_param_type\":0,\"url_route_on\":true,\"route_config_file\":[\"route\"],\"route_complete_match\":false,\"url_route_must\":false,\"url_domain_deploy\":false,\"url_domain_root\":\"\",\"url_convert\":true,\"url_controller_layer\":\"controller\",\"var_method\":\"_method\",\"var_ajax\":\"_ajax\",\"var_pjax\":\"_pjax\",\"request_cache\":false,\"request_cache_expire\":null,\"request_cache_except\":[],\"template\":{\"type\":\"Think\",\"view_path\":\"\",\"view_suffix\":\"html\",\"view_depr\":\"\\\\\",\"tpl_begin\":\"{\",\"tpl_end\":\"}\",\"taglib_begin\":\"{\",\"taglib_end\":\"}\",\"tpl_cache\":true},\"view_replace_str\":{\"__PUBLIC__\":\"\",\"__ROOT__\":\"\",\"__CDN__\":\"\"},\"dispatch_success_tmpl\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\/..\\/application\\/common\\\\view\\\\tpl\\\\dispatch_jump.tpl\",\"dispatch_error_tmpl\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\/..\\/application\\/common\\\\view\\\\tpl\\\\dispatch_jump.tpl\",\"exception_tmpl\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\/..\\/application\\/common\\\\view\\\\tpl\\\\think_exception.tpl\",\"error_message\":\"你所浏览的页面暂时无法访问\",\"show_error_msg\":false,\"exception_handle\":\"\\\\app\\\\api\\\\library\\\\ExceptionHandle\",\"record_trace\":false,\"log\":{\"type\":\"File\",\"path\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\runtime\\\\log\\\\\",\"level\":[\",\"]},\"trace\":{\"type\":\"Html\"},\"cache\":{\"type\":\"File\",\"path\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\runtime\\\\cache\\\\\",\"prefix\":\"\",\"expire\":0},\"session\":{\"id\":\"\",\"var_session_id\":\"\",\"prefix\":\"think\",\"type\":\"\",\"auto_start\":true},\"cookie\":{\"prefix\":\"\",\"expire\":0,\"path\":\"\\/\",\"domain\":\"\",\"secure\":false,\"httponly\":\"\",\"setcookie\":true},\"database\":{\"type\":\"mysql\",\"dsn\":\"\",\"hostname\":\"127.0.0.1\",\"database\":\"base\",\"username\":\"root\",\"password\":\"root\",\"hostport\":\"\",\"params\":[],\"charset\":\"utf8mb4\",\"prefix\":\"db_\",\"debug\":true,\"deploy\":0,\"rw_separate\":false,\"master_num\":1,\"slave_no\":\"\",\"fields_strict\":true,\"resultset_type\":\"array\",\"auto_timestamp\":false,\"datetime_format\":false,\"sql_explain\":false},\"paginate\":{\"type\":\"bootstrap\",\"var_page\":\"page\",\"list_rows\":15},\"console\":{\"name\":\"Think Console\",\"version\":\"0.1\",\"user\":null},\"app_namespace\":\"app\",\"captcha\":{\"codeSet\":\"2345678abcdefhijkmnpqrstuvwxyzABCDEFGHJKLMNPQRTUVWXY\",\"fontSize\":18,\"useCurve\":false,\"useZh\":false,\"imageH\":40,\"imageW\":130,\"length\":4,\"reset\":true},\"token\":{\"type\":\"Mysql\",\"key\":\"i3d6o32wo8fvs1fvdpwens\",\"hashalgo\":\"ripemd160\",\"expire\":0},\"fastadmin\":{\"usercenter\":false,\"login_captcha\":true,\"login_failure_retry\":true,\"login_unique\":false,\"login_background\":\"\\/assets\\/img\\/loginbg.jpg\",\"multiplenav\":false,\"checkupdate\":false,\"version\":\"1.0.0.20190705_beta\",\"api_url\":\"https:\\/\\/api.fastadmin.net\"},\"addons\":{\"autoload\":false,\"hooks\":{\"action_begin\":[\"geetest\"],\"config_init\":[\"geetest\"],\"app_init\":[\"log\"],\"admin_login_init\":[\"loginbg\"]},\"route\":[]},\"queue\":{\"connector\":\"Sync\"},\"site\":{\"name\":\"FastAdmin\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"},\"fixedpage\":\"dashboard\",\"categorytype\":{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"},\"configgroup\":{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"WeChat\":\"小程序配置\",\"Payment\":\"支付配置\"},\"mail_type\":\"1\",\"mail_smtp_host\":\"smtp.qq.com\",\"mail_smtp_port\":\"465\",\"mail_smtp_user\":\"10000\",\"mail_smtp_pass\":\"password\",\"mail_verify_type\":\"2\",\"mail_from\":\"10000@qq.com\",\"app_id\":\"1\",\"app_secret\":\"1\",\"app_mch_id\":\"1\",\"app_key\":\"1\"},\"upload\":{\"uploadurl\":\"ajax\\/upload\",\"cdnurl\":\"\",\"savekey\":\"\\/uploads\\/{year}{mon}{day}\\/{filemd5}{.suffix}\",\"maxsize\":\"10mb\",\"mimetype\":\"jpg,png,bmp,jpeg,gif,zip,rar,xls,xlsx\",\"multiple\":false},\"notify_url\":\"\\/notify\"},false]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\App.php\",\"line\":139,\"function\":\"exec\",\"class\":\"think\\\\App\",\"type\":\"::\",\"args\":[{\"type\":\"module\",\"module\":[\"api\",\"Index\",\"errorException\"],\"convert\":false},{\"app_host\":\"\",\"app_debug\":false,\"app_trace\":false,\"app_status\":\"\",\"app_multi_module\":true,\"auto_bind_module\":false,\"root_namespace\":[],\"extra_file_list\":[\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\helper.php\"],\"default_return_type\":\"html\",\"default_ajax_return\":\"json\",\"default_jsonp_handler\":\"jsonpReturn\",\"var_jsonp_handler\":\"callback\",\"default_timezone\":\"PRC\",\"lang_switch_on\":false,\"default_filter\":\"\",\"default_lang\":\"zh-cn\",\"class_suffix\":false,\"controller_suffix\":false,\"default_module\":\"api\",\"deny_module_list\":[\"common\"],\"default_controller\":\"Index\",\"default_action\":\"index\",\"default_validate\":\"\",\"empty_controller\":\"Error\",\"use_action_prefix\":false,\"action_suffix\":\"\",\"controller_auto_search\":true,\"var_pathinfo\":\"s\",\"pathinfo_fetch\":[\"ORIG_PATH_INFO\",\"REDIRECT_PATH_INFO\",\"REDIRECT_URL\"],\"pathinfo_depr\":\"\\/\",\"https_agent_name\":\"\",\"url_html_suffix\":\"html\",\"url_common_param\":false,\"url_param_type\":0,\"url_route_on\":true,\"route_config_file\":[\"route\"],\"route_complete_match\":false,\"url_route_must\":false,\"url_domain_deploy\":false,\"url_domain_root\":\"\",\"url_convert\":true,\"url_controller_layer\":\"controller\",\"var_method\":\"_method\",\"var_ajax\":\"_ajax\",\"var_pjax\":\"_pjax\",\"request_cache\":false,\"request_cache_expire\":null,\"request_cache_except\":[],\"template\":{\"type\":\"Think\",\"view_path\":\"\",\"view_suffix\":\"html\",\"view_depr\":\"\\\\\",\"tpl_begin\":\"{\",\"tpl_end\":\"}\",\"taglib_begin\":\"{\",\"taglib_end\":\"}\",\"tpl_cache\":true},\"view_replace_str\":{\"__PUBLIC__\":\"\",\"__ROOT__\":\"\",\"__CDN__\":\"\"},\"dispatch_success_tmpl\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\/..\\/application\\/common\\\\view\\\\tpl\\\\dispatch_jump.tpl\",\"dispatch_error_tmpl\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\/..\\/application\\/common\\\\view\\\\tpl\\\\dispatch_jump.tpl\",\"exception_tmpl\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\/..\\/application\\/common\\\\view\\\\tpl\\\\think_exception.tpl\",\"error_message\":\"你所浏览的页面暂时无法访问\",\"show_error_msg\":false,\"exception_handle\":\"\",\"record_trace\":false,\"log\":{\"type\":\"File\",\"path\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\runtime\\\\log\\\\\",\"level\":[\",\"]},\"trace\":{\"type\":\"Html\"},\"cache\":{\"type\":\"File\",\"path\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\runtime\\\\cache\\\\\",\"prefix\":\"\",\"expire\":0},\"session\":{\"id\":\"\",\"var_session_id\":\"\",\"prefix\":\"think\",\"type\":\"\",\"auto_start\":true},\"cookie\":{\"prefix\":\"\",\"expire\":0,\"path\":\"\\/\",\"domain\":\"\",\"secure\":false,\"httponly\":\"\",\"setcookie\":true},\"database\":{\"type\":\"mysql\",\"dsn\":\"\",\"hostname\":\"127.0.0.1\",\"database\":\"base\",\"username\":\"root\",\"password\":\"root\",\"hostport\":\"\",\"params\":[],\"charset\":\"utf8mb4\",\"prefix\":\"db_\",\"debug\":true,\"deploy\":0,\"rw_separate\":false,\"master_num\":1,\"slave_no\":\"\",\"fields_strict\":true,\"resultset_type\":\"array\",\"auto_timestamp\":false,\"datetime_format\":false,\"sql_explain\":false},\"paginate\":{\"type\":\"bootstrap\",\"var_page\":\"page\",\"list_rows\":15},\"console\":{\"name\":\"Think Console\",\"version\":\"0.1\",\"user\":null},\"app_namespace\":\"app\",\"captcha\":{\"codeSet\":\"2345678abcdefhijkmnpqrstuvwxyzABCDEFGHJKLMNPQRTUVWXY\",\"fontSize\":18,\"useCurve\":false,\"useZh\":false,\"imageH\":40,\"imageW\":130,\"length\":4,\"reset\":true},\"token\":{\"type\":\"Mysql\",\"key\":\"i3d6o32wo8fvs1fvdpwens\",\"hashalgo\":\"ripemd160\",\"expire\":0},\"fastadmin\":{\"usercenter\":false,\"login_captcha\":true,\"login_failure_retry\":true,\"login_unique\":false,\"login_background\":\"\\/assets\\/img\\/loginbg.jpg\",\"multiplenav\":false,\"checkupdate\":false,\"version\":\"1.0.0.20190705_beta\",\"api_url\":\"https:\\/\\/api.fastadmin.net\"},\"addons\":{\"autoload\":false,\"hooks\":{\"action_begin\":[\"geetest\"],\"config_init\":[\"geetest\"],\"app_init\":[\"log\"],\"admin_login_init\":[\"loginbg\"]},\"route\":[]},\"queue\":{\"connector\":\"Sync\"},\"site\":{\"name\":\"FastAdmin\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"},\"fixedpage\":\"dashboard\",\"categorytype\":{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"},\"configgroup\":{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"WeChat\":\"小程序配置\",\"Payment\":\"支付配置\"},\"mail_type\":\"1\",\"mail_smtp_host\":\"smtp.qq.com\",\"mail_smtp_port\":\"465\",\"mail_smtp_user\":\"10000\",\"mail_smtp_pass\":\"password\",\"mail_verify_type\":\"2\",\"mail_from\":\"10000@qq.com\",\"app_id\":\"1\",\"app_secret\":\"1\",\"app_mch_id\":\"1\",\"app_key\":\"1\"},\"upload\":{\"uploadurl\":\"ajax\\/upload\",\"cdnurl\":\"\",\"savekey\":\"\\/uploads\\/{year}{mon}{day}\\/{filemd5}{.suffix}\",\"maxsize\":\"10mb\",\"mimetype\":\"jpg,png,bmp,jpeg,gif,zip,rar,xls,xlsx\",\"multiple\":false}}]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\start.php\",\"line\":19,\"function\":\"run\",\"class\":\"think\\\\App\",\"type\":\"::\",\"args\":[]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\\\index.php\",\"line\":24,\"args\":[\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\start.php\"],\"function\":\"require\"}],\"code\":8,\"source\":{\"first\":39,\"source\":[\"    public function errorException()\\r\\n\",\"    {\\r\\n\",\"\\/\\/        try {\\r\\n\",\"\\/\\/            \\/\\/todo\\r\\n\",\"\\/\\/            \\/\\/发生代码级别的error\\r\\n\",\"\\/\\/            echo $a;\\r\\n\",\"\\/\\/        } catch (\\\\Exception $e) {\\r\\n\",\"\\/\\/\\r\\n\",\"\\/\\/        }\\r\\n\",\"        $a = $b + 1;\\r\\n\",\"        echo $a;\\r\\n\",\"    }\\r\\n\",\"\\r\\n\",\"\\r\\n\",\"    \\/**\\r\\n\",\"     * 首页\\r\\n\",\"     *\\r\\n\",\"     *\\/\\r\\n\",\"    public function index()\\r\\n\"]},\"datas\":[],\"tables\":{\"GET Data\":[],\"POST Data\":[],\"Files\":[],\"Cookies\":{\"_ga\":\"GA1.2.1446302998.1563933455\"},\"Session\":[],\"Server\\/Request Data\":{\"PATH\":\"C:\\\\Program Files (x86)\\\\NetSarang\\\\Xshell 6\\\\;C:\\\\Program Files (x86)\\\\Common Files\\\\NetSarang;C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files (x86)\\\\Intel\\\\iCLS Client\\\\;C:\\\\Program Files\\\\Intel\\\\iCLS Client\\\\;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\NVIDIA Corporation\\\\PhysX\\\\Common;C:\\\\Program Files (x86)\\\\Intel\\\\Intel(R) Management Engine Components\\\\DAL;C:\\\\Program Files\\\\Intel\\\\Intel(R) Management Engine Components\\\\DAL;C:\\\\Program Files (x86)\\\\Intel\\\\Intel(R) Management Engine Components\\\\IPT;C:\\\\Program Files\\\\Intel\\\\Intel(R) Management Engine Components\\\\IPT;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;F:\\\\phpStudy\\\\PHPTutorial\\\\php\\\\php-7.2.1-nts;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\Intel\\\\WiFi\\\\bin\\\\;C:\\\\Program Files\\\\Common Files\\\\Intel\\\\WirelessCommon\\\\;C:\\\\Program Files\\\\MacType;F:\\\\Go\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;C:\\\\Users\\\\pengq\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps;F:\\\\PHPTutorial\\\\php\\\\php-7.2.1-nts\\\\php.exe;C:\\\\Users\\\\pengq\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\pengq\\\\AppData\\\\Roaming\\\\Composer\\\\vendor\\\\bin;C:\\\\Users\\\\pengq\\\\go\\\\bin;C:\\\\Users\\\\pengq\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps;C:\\\\Users\\\\pengq\\\\AppData\\\\Local\\\\Programs\\\\Fiddler;C:\\\\Users\\\\pengq\\\\AppData\\\\Local\\\\Programs\\\\Microsoft VS Code\\\\bin\",\"SYSTEMROOT\":\"C:\\\\WINDOWS\",\"COMSPEC\":\"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\",\"PATHEXT\":\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\",\"WINDIR\":\"C:\\\\WINDOWS\",\"PHP_FCGI_MAX_REQUESTS\":\"1000\",\"PHPRC\":\"F:\\/phpStudy\\/PHPTutorial\\/php\\/php-7.2.1-nts\\/\",\"_FCGI_SHUTDOWN_EVENT_\":\"2340\",\"SCRIPT_NAME\":\"\\/index.php\",\"REQUEST_URI\":\"\\/api\\/error\",\"QUERY_STRING\":\"\",\"REQUEST_METHOD\":\"GET\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"GATEWAY_INTERFACE\":\"CGI\\/1.1\",\"REDIRECT_URL\":\"\\/api\\/error\",\"REMOTE_PORT\":\"57710\",\"SCRIPT_FILENAME\":\"F:\\/phpStudy\\/PHPTutorial\\/WWW\\/fast_api\\/public\\/index.php\",\"SERVER_ADMIN\":\"admin@php.cn\",\"CONTEXT_DOCUMENT_ROOT\":\"F:\\/phpStudy\\/PHPTutorial\\/WWW\\/fast_api\\/public\",\"CONTEXT_PREFIX\":\"\",\"REQUEST_SCHEME\":\"http\",\"DOCUMENT_ROOT\":\"F:\\/phpStudy\\/PHPTutorial\\/WWW\\/fast_api\\/public\",\"REMOTE_ADDR\":\"127.0.0.1\",\"SERVER_PORT\":\"80\",\"SERVER_ADDR\":\"127.0.0.1\",\"SERVER_NAME\":\"base.com\",\"SERVER_SOFTWARE\":\"Apache\\/2.4.23 (Win32) OpenSSL\\/1.0.2j mod_fcgid\\/2.3.9\",\"SERVER_SIGNATURE\":\"\",\"SystemRoot\":\"C:\\\\WINDOWS\",\"HTTP_COOKIE\":\"_ga=GA1.2.1446302998.1563933455\",\"HTTP_ACCEPT_LANGUAGE\":\"en,zh-CN;q=0.9,zh;q=0.8,en-GB;q=0.7,en-US;q=0.6\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate\",\"HTTP_ACCEPT\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/76.0.3809.132 Safari\\/537.36\",\"HTTP_UPGRADE_INSECURE_REQUESTS\":\"1\",\"HTTP_CACHE_CONTROL\":\"max-age=0\",\"HTTP_CONNECTION\":\"close\",\"HTTP_HOST\":\"base.com\",\"REDIRECT_STATUS\":\"200\",\"REDIRECT_PATH_INFO\":\"api\\/error\",\"FCGI_ROLE\":\"RESPONDER\",\"PHP_SELF\":\"\\/index.php\",\"REQUEST_TIME_FLOAT\":1569290620.6517889,\"REQUEST_TIME\":1569290620,\"PATH_INFO\":\"api\\/error\"},\"Environment Variables\":[]},\"echo\":\"\"}', NULL);
INSERT INTO `db_abnormal` VALUES (3, 'think\\exception\\PDOException', '2019-09-24 11:02:46', '{\"name\":\"think\\\\exception\\\\PDOException\",\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\db\\\\Connection.php\",\"line\":385,\"message\":\"SQLSTATE[42S02]: Base table or view not found: 1146 Table \'base.db_banner\' doesn\'t exist\",\"trace\":[{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\db\\\\connector\\\\Mysql.php\",\"line\":65,\"function\":\"query\",\"class\":\"think\\\\db\\\\Connection\",\"type\":\"->\",\"args\":[\"SHOW COLUMNS FROM `db_banner`\",[],false,true]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\db\\\\Query.php\",\"line\":1921,\"function\":\"getFields\",\"class\":\"think\\\\db\\\\connector\\\\Mysql\",\"type\":\"->\",\"args\":[\"`db_banner`\"]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\db\\\\Query.php\",\"line\":1969,\"function\":\"getTableInfo\",\"class\":\"think\\\\db\\\\Query\",\"type\":\"->\",\"args\":[\"db_banner\",\"type\"]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\db\\\\Query.php\",\"line\":1975,\"function\":\"getFieldsType\",\"class\":\"think\\\\db\\\\Query\",\"type\":\"->\",\"args\":[\"db_banner\"]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\db\\\\Builder.php\",\"line\":270,\"function\":\"getFieldsBind\",\"class\":\"think\\\\db\\\\Query\",\"type\":\"->\",\"args\":[\"db_banner\"]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\db\\\\Builder.php\",\"line\":240,\"function\":\"buildWhere\",\"class\":\"think\\\\db\\\\Builder\",\"type\":\"->\",\"args\":[[],{\"soft_delete\":[\"__TABLE__.deletetime\",[\"null\",\"\"]],\"table\":\"db_banner\",\"where\":[],\"field\":\"*\",\"data\":[],\"strict\":true,\"master\":false,\"lock\":false,\"fetch_pdo\":false,\"fetch_sql\":false,\"distinct\":false,\"join\":\"\",\"union\":\"\",\"group\":\"\",\"having\":\"\",\"limit\":\"\",\"order\":\"\",\"force\":\"\",\"comment\":\"\"}]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\db\\\\Builder.php\",\"line\":719,\"function\":\"parseWhere\",\"class\":\"think\\\\db\\\\Builder\",\"type\":\"->\",\"args\":[[],{\"soft_delete\":[\"__TABLE__.deletetime\",[\"null\",\"\"]],\"table\":\"db_banner\",\"where\":[],\"field\":\"*\",\"data\":[],\"strict\":true,\"master\":false,\"lock\":false,\"fetch_pdo\":false,\"fetch_sql\":false,\"distinct\":false,\"join\":\"\",\"union\":\"\",\"group\":\"\",\"having\":\"\",\"limit\":\"\",\"order\":\"\",\"force\":\"\",\"comment\":\"\"}]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\db\\\\Query.php\",\"line\":2511,\"function\":\"select\",\"class\":\"think\\\\db\\\\Builder\",\"type\":\"->\",\"args\":[{\"soft_delete\":[\"__TABLE__.deletetime\",[\"null\",\"\"]],\"table\":\"db_banner\",\"where\":[],\"field\":\"*\",\"data\":[],\"strict\":true,\"master\":false,\"lock\":false,\"fetch_pdo\":false,\"fetch_sql\":false,\"distinct\":false,\"join\":\"\",\"union\":\"\",\"group\":\"\",\"having\":\"\",\"limit\":\"\",\"order\":\"\",\"force\":\"\",\"comment\":\"\"}]},{\"function\":\"select\",\"class\":\"think\\\\db\\\\Query\",\"type\":\"->\",\"args\":[]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\Model.php\",\"line\":2190,\"function\":\"call_user_func_array\",\"args\":[[{},\"select\"],[]]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\application\\\\api\\\\logic\\\\Banner.php\",\"line\":31,\"function\":\"__call\",\"class\":\"think\\\\Model\",\"type\":\"->\",\"args\":[\"select\",[]]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\application\\\\api\\\\controller\\\\Index.php\",\"line\":30,\"function\":\"getList\",\"class\":\"app\\\\api\\\\logic\\\\Banner\",\"type\":\"->\",\"args\":[[]]},{\"function\":\"test\",\"class\":\"app\\\\api\\\\controller\\\\Index\",\"type\":\"->\",\"args\":[]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\App.php\",\"line\":343,\"function\":\"invokeArgs\",\"class\":\"ReflectionMethod\",\"type\":\"->\",\"args\":[{},[]]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\App.php\",\"line\":611,\"function\":\"invokeMethod\",\"class\":\"think\\\\App\",\"type\":\"::\",\"args\":[[{},\"test\"],[]]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\App.php\",\"line\":456,\"function\":\"module\",\"class\":\"think\\\\App\",\"type\":\"::\",\"args\":[[\"api\",\"Index\",\"test\"],{\"app_host\":\"\",\"app_debug\":false,\"app_trace\":false,\"app_status\":\"\",\"app_multi_module\":true,\"auto_bind_module\":false,\"root_namespace\":[],\"extra_file_list\":[\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\helper.php\"],\"default_return_type\":\"html\",\"default_ajax_return\":\"json\",\"default_jsonp_handler\":\"jsonpReturn\",\"var_jsonp_handler\":\"callback\",\"default_timezone\":\"PRC\",\"lang_switch_on\":false,\"default_filter\":\"\",\"default_lang\":\"zh-cn\",\"class_suffix\":false,\"controller_suffix\":false,\"default_module\":\"api\",\"deny_module_list\":[\"common\"],\"default_controller\":\"Index\",\"default_action\":\"index\",\"default_validate\":\"\",\"empty_controller\":\"Error\",\"use_action_prefix\":false,\"action_suffix\":\"\",\"controller_auto_search\":true,\"var_pathinfo\":\"s\",\"pathinfo_fetch\":[\"ORIG_PATH_INFO\",\"REDIRECT_PATH_INFO\",\"REDIRECT_URL\"],\"pathinfo_depr\":\"\\/\",\"https_agent_name\":\"\",\"url_html_suffix\":\"html\",\"url_common_param\":false,\"url_param_type\":0,\"url_route_on\":true,\"route_config_file\":[\"route\"],\"route_complete_match\":false,\"url_route_must\":false,\"url_domain_deploy\":false,\"url_domain_root\":\"\",\"url_convert\":true,\"url_controller_layer\":\"controller\",\"var_method\":\"_method\",\"var_ajax\":\"_ajax\",\"var_pjax\":\"_pjax\",\"request_cache\":false,\"request_cache_expire\":null,\"request_cache_except\":[],\"template\":{\"type\":\"Think\",\"view_path\":\"\",\"view_suffix\":\"html\",\"view_depr\":\"\\\\\",\"tpl_begin\":\"{\",\"tpl_end\":\"}\",\"taglib_begin\":\"{\",\"taglib_end\":\"}\",\"tpl_cache\":true},\"view_replace_str\":{\"__PUBLIC__\":\"\",\"__ROOT__\":\"\",\"__CDN__\":\"\"},\"dispatch_success_tmpl\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\/..\\/application\\/common\\\\view\\\\tpl\\\\dispatch_jump.tpl\",\"dispatch_error_tmpl\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\/..\\/application\\/common\\\\view\\\\tpl\\\\dispatch_jump.tpl\",\"exception_tmpl\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\/..\\/application\\/common\\\\view\\\\tpl\\\\think_exception.tpl\",\"error_message\":\"你所浏览的页面暂时无法访问\",\"show_error_msg\":false,\"exception_handle\":\"\\\\app\\\\api\\\\library\\\\ExceptionHandle\",\"record_trace\":false,\"log\":{\"type\":\"File\",\"path\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\runtime\\\\log\\\\\",\"level\":[\",\"]},\"trace\":{\"type\":\"Html\"},\"cache\":{\"type\":\"File\",\"path\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\runtime\\\\cache\\\\\",\"prefix\":\"\",\"expire\":0},\"session\":{\"id\":\"\",\"var_session_id\":\"\",\"prefix\":\"think\",\"type\":\"\",\"auto_start\":true},\"cookie\":{\"prefix\":\"\",\"expire\":0,\"path\":\"\\/\",\"domain\":\"\",\"secure\":false,\"httponly\":\"\",\"setcookie\":true},\"database\":{\"type\":\"mysql\",\"dsn\":\"\",\"hostname\":\"127.0.0.1\",\"database\":\"base\",\"username\":\"root\",\"password\":\"root\",\"hostport\":\"\",\"params\":[],\"charset\":\"utf8mb4\",\"prefix\":\"db_\",\"debug\":true,\"deploy\":0,\"rw_separate\":false,\"master_num\":1,\"slave_no\":\"\",\"fields_strict\":true,\"resultset_type\":\"array\",\"auto_timestamp\":false,\"datetime_format\":false,\"sql_explain\":false},\"paginate\":{\"type\":\"bootstrap\",\"var_page\":\"page\",\"list_rows\":15},\"console\":{\"name\":\"Think Console\",\"version\":\"0.1\",\"user\":null},\"app_namespace\":\"app\",\"captcha\":{\"codeSet\":\"2345678abcdefhijkmnpqrstuvwxyzABCDEFGHJKLMNPQRTUVWXY\",\"fontSize\":18,\"useCurve\":false,\"useZh\":false,\"imageH\":40,\"imageW\":130,\"length\":4,\"reset\":true},\"token\":{\"type\":\"Mysql\",\"key\":\"i3d6o32wo8fvs1fvdpwens\",\"hashalgo\":\"ripemd160\",\"expire\":0},\"fastadmin\":{\"usercenter\":false,\"login_captcha\":true,\"login_failure_retry\":true,\"login_unique\":false,\"login_background\":\"\\/assets\\/img\\/loginbg.jpg\",\"multiplenav\":false,\"checkupdate\":false,\"version\":\"1.0.0.20190705_beta\",\"api_url\":\"https:\\/\\/api.fastadmin.net\"},\"addons\":{\"autoload\":false,\"hooks\":{\"action_begin\":[\"geetest\"],\"config_init\":[\"geetest\"],\"app_init\":[\"log\"],\"admin_login_init\":[\"loginbg\"]},\"route\":[]},\"queue\":{\"connector\":\"Sync\"},\"site\":{\"name\":\"FastAdmin\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"},\"fixedpage\":\"dashboard\",\"categorytype\":{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"},\"configgroup\":{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"WeChat\":\"小程序配置\",\"Payment\":\"支付配置\"},\"mail_type\":\"1\",\"mail_smtp_host\":\"smtp.qq.com\",\"mail_smtp_port\":\"465\",\"mail_smtp_user\":\"10000\",\"mail_smtp_pass\":\"password\",\"mail_verify_type\":\"2\",\"mail_from\":\"10000@qq.com\",\"app_id\":\"1\",\"app_secret\":\"1\",\"app_mch_id\":\"1\",\"app_key\":\"1\"},\"upload\":{\"uploadurl\":\"ajax\\/upload\",\"cdnurl\":\"\",\"savekey\":\"\\/uploads\\/{year}{mon}{day}\\/{filemd5}{.suffix}\",\"maxsize\":\"10mb\",\"mimetype\":\"jpg,png,bmp,jpeg,gif,zip,rar,xls,xlsx\",\"multiple\":false},\"notify_url\":\"\\/notify\"},false]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\library\\\\think\\\\App.php\",\"line\":139,\"function\":\"exec\",\"class\":\"think\\\\App\",\"type\":\"::\",\"args\":[{\"type\":\"module\",\"module\":[\"api\",\"Index\",\"test\"],\"convert\":false},{\"app_host\":\"\",\"app_debug\":false,\"app_trace\":false,\"app_status\":\"\",\"app_multi_module\":true,\"auto_bind_module\":false,\"root_namespace\":[],\"extra_file_list\":[\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\helper.php\"],\"default_return_type\":\"html\",\"default_ajax_return\":\"json\",\"default_jsonp_handler\":\"jsonpReturn\",\"var_jsonp_handler\":\"callback\",\"default_timezone\":\"PRC\",\"lang_switch_on\":false,\"default_filter\":\"\",\"default_lang\":\"zh-cn\",\"class_suffix\":false,\"controller_suffix\":false,\"default_module\":\"api\",\"deny_module_list\":[\"common\"],\"default_controller\":\"Index\",\"default_action\":\"index\",\"default_validate\":\"\",\"empty_controller\":\"Error\",\"use_action_prefix\":false,\"action_suffix\":\"\",\"controller_auto_search\":true,\"var_pathinfo\":\"s\",\"pathinfo_fetch\":[\"ORIG_PATH_INFO\",\"REDIRECT_PATH_INFO\",\"REDIRECT_URL\"],\"pathinfo_depr\":\"\\/\",\"https_agent_name\":\"\",\"url_html_suffix\":\"html\",\"url_common_param\":false,\"url_param_type\":0,\"url_route_on\":true,\"route_config_file\":[\"route\"],\"route_complete_match\":false,\"url_route_must\":false,\"url_domain_deploy\":false,\"url_domain_root\":\"\",\"url_convert\":true,\"url_controller_layer\":\"controller\",\"var_method\":\"_method\",\"var_ajax\":\"_ajax\",\"var_pjax\":\"_pjax\",\"request_cache\":false,\"request_cache_expire\":null,\"request_cache_except\":[],\"template\":{\"type\":\"Think\",\"view_path\":\"\",\"view_suffix\":\"html\",\"view_depr\":\"\\\\\",\"tpl_begin\":\"{\",\"tpl_end\":\"}\",\"taglib_begin\":\"{\",\"taglib_end\":\"}\",\"tpl_cache\":true},\"view_replace_str\":{\"__PUBLIC__\":\"\",\"__ROOT__\":\"\",\"__CDN__\":\"\"},\"dispatch_success_tmpl\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\/..\\/application\\/common\\\\view\\\\tpl\\\\dispatch_jump.tpl\",\"dispatch_error_tmpl\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\/..\\/application\\/common\\\\view\\\\tpl\\\\dispatch_jump.tpl\",\"exception_tmpl\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\/..\\/application\\/common\\\\view\\\\tpl\\\\think_exception.tpl\",\"error_message\":\"你所浏览的页面暂时无法访问\",\"show_error_msg\":false,\"exception_handle\":\"\",\"record_trace\":false,\"log\":{\"type\":\"File\",\"path\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\runtime\\\\log\\\\\",\"level\":[\",\"]},\"trace\":{\"type\":\"Html\"},\"cache\":{\"type\":\"File\",\"path\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\runtime\\\\cache\\\\\",\"prefix\":\"\",\"expire\":0},\"session\":{\"id\":\"\",\"var_session_id\":\"\",\"prefix\":\"think\",\"type\":\"\",\"auto_start\":true},\"cookie\":{\"prefix\":\"\",\"expire\":0,\"path\":\"\\/\",\"domain\":\"\",\"secure\":false,\"httponly\":\"\",\"setcookie\":true},\"database\":{\"type\":\"mysql\",\"dsn\":\"\",\"hostname\":\"127.0.0.1\",\"database\":\"base\",\"username\":\"root\",\"password\":\"root\",\"hostport\":\"\",\"params\":[],\"charset\":\"utf8mb4\",\"prefix\":\"db_\",\"debug\":true,\"deploy\":0,\"rw_separate\":false,\"master_num\":1,\"slave_no\":\"\",\"fields_strict\":true,\"resultset_type\":\"array\",\"auto_timestamp\":false,\"datetime_format\":false,\"sql_explain\":false},\"paginate\":{\"type\":\"bootstrap\",\"var_page\":\"page\",\"list_rows\":15},\"console\":{\"name\":\"Think Console\",\"version\":\"0.1\",\"user\":null},\"app_namespace\":\"app\",\"captcha\":{\"codeSet\":\"2345678abcdefhijkmnpqrstuvwxyzABCDEFGHJKLMNPQRTUVWXY\",\"fontSize\":18,\"useCurve\":false,\"useZh\":false,\"imageH\":40,\"imageW\":130,\"length\":4,\"reset\":true},\"token\":{\"type\":\"Mysql\",\"key\":\"i3d6o32wo8fvs1fvdpwens\",\"hashalgo\":\"ripemd160\",\"expire\":0},\"fastadmin\":{\"usercenter\":false,\"login_captcha\":true,\"login_failure_retry\":true,\"login_unique\":false,\"login_background\":\"\\/assets\\/img\\/loginbg.jpg\",\"multiplenav\":false,\"checkupdate\":false,\"version\":\"1.0.0.20190705_beta\",\"api_url\":\"https:\\/\\/api.fastadmin.net\"},\"addons\":{\"autoload\":false,\"hooks\":{\"action_begin\":[\"geetest\"],\"config_init\":[\"geetest\"],\"app_init\":[\"log\"],\"admin_login_init\":[\"loginbg\"]},\"route\":[]},\"queue\":{\"connector\":\"Sync\"},\"site\":{\"name\":\"FastAdmin\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"},\"fixedpage\":\"dashboard\",\"categorytype\":{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"},\"configgroup\":{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"WeChat\":\"小程序配置\",\"Payment\":\"支付配置\"},\"mail_type\":\"1\",\"mail_smtp_host\":\"smtp.qq.com\",\"mail_smtp_port\":\"465\",\"mail_smtp_user\":\"10000\",\"mail_smtp_pass\":\"password\",\"mail_verify_type\":\"2\",\"mail_from\":\"10000@qq.com\",\"app_id\":\"1\",\"app_secret\":\"1\",\"app_mch_id\":\"1\",\"app_key\":\"1\"},\"upload\":{\"uploadurl\":\"ajax\\/upload\",\"cdnurl\":\"\",\"savekey\":\"\\/uploads\\/{year}{mon}{day}\\/{filemd5}{.suffix}\",\"maxsize\":\"10mb\",\"mimetype\":\"jpg,png,bmp,jpeg,gif,zip,rar,xls,xlsx\",\"multiple\":false}}]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\start.php\",\"line\":19,\"function\":\"run\",\"class\":\"think\\\\App\",\"type\":\"::\",\"args\":[]},{\"file\":\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\public\\\\index.php\",\"line\":24,\"args\":[\"F:\\\\phpStudy\\\\PHPTutorial\\\\WWW\\\\fast_api\\\\thinkphp\\\\start.php\"],\"function\":\"require\"}],\"code\":10501,\"source\":{\"first\":376,\"source\":[\"            $this->PDOStatement->execute();\\n\",\"            \\/\\/ 调试结束\\n\",\"            $this->debug(false, \'\', $master);\\n\",\"            \\/\\/ 返回结果集\\n\",\"            return $this->getResult($pdo, $procedure);\\n\",\"        } catch (\\\\PDOException $e) {\\n\",\"            if ($this->isBreak($e)) {\\n\",\"                return $this->close()->query($sql, $bind, $master, $pdo);\\n\",\"            }\\n\",\"            throw new PDOException($e, $this->config, $this->getLastsql());\\n\",\"        } catch (\\\\Throwable $e) {\\n\",\"            if ($this->isBreak($e)) {\\n\",\"                return $this->close()->query($sql, $bind, $master, $pdo);\\n\",\"            }\\n\",\"            throw $e;\\n\",\"        } catch (\\\\Exception $e) {\\n\",\"            if ($this->isBreak($e)) {\\n\",\"                return $this->close()->query($sql, $bind, $master, $pdo);\\n\",\"            }\\n\"]},\"datas\":{\"PDO Error Info\":{\"SQLSTATE\":\"42S02\",\"Driver Error Code\":1146,\"Driver Error Message\":\"Table \'base.db_banner\' doesn\'t exist\"},\"Database Status\":{\"Error Code\":10501,\"Error Message\":\"SQLSTATE[42S02]: Base table or view not found: 1146 Table \'base.db_banner\' doesn\'t exist\",\"Error SQL\":\"SHOW COLUMNS FROM `db_banner`\"},\"Database Config\":{\"type\":\"mysql\",\"hostname\":\"127.0.0.1\",\"database\":\"base\",\"hostport\":\"\",\"dsn\":\"\",\"params\":[],\"charset\":\"utf8mb4\",\"prefix\":\"db_\",\"debug\":true,\"deploy\":0,\"rw_separate\":false,\"master_num\":1,\"slave_no\":\"\",\"read_master\":false,\"fields_strict\":true,\"result_type\":2,\"resultset_type\":\"array\",\"auto_timestamp\":false,\"datetime_format\":false,\"sql_explain\":false,\"builder\":\"\",\"query\":\"\\\\think\\\\db\\\\Query\",\"break_reconnect\":false}},\"tables\":{\"GET Data\":[],\"POST Data\":[],\"Files\":[],\"Cookies\":{\"_ga\":\"GA1.2.1446302998.1563933455\",\"PHPSESSID\":\"im1ncm78lkfdv4hovrvb5iami2\"},\"Session\":[],\"Server\\/Request Data\":{\"PATH\":\"C:\\\\Program Files (x86)\\\\NetSarang\\\\Xshell 6\\\\;C:\\\\Program Files (x86)\\\\Common Files\\\\NetSarang;C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files (x86)\\\\Intel\\\\iCLS Client\\\\;C:\\\\Program Files\\\\Intel\\\\iCLS Client\\\\;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\NVIDIA Corporation\\\\PhysX\\\\Common;C:\\\\Program Files (x86)\\\\Intel\\\\Intel(R) Management Engine Components\\\\DAL;C:\\\\Program Files\\\\Intel\\\\Intel(R) Management Engine Components\\\\DAL;C:\\\\Program Files (x86)\\\\Intel\\\\Intel(R) Management Engine Components\\\\IPT;C:\\\\Program Files\\\\Intel\\\\Intel(R) Management Engine Components\\\\IPT;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\System32\\\\Wbem;C:\\\\WINDOWS\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\WINDOWS\\\\System32\\\\OpenSSH\\\\;F:\\\\phpStudy\\\\PHPTutorial\\\\php\\\\php-7.2.1-nts;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\Intel\\\\WiFi\\\\bin\\\\;C:\\\\Program Files\\\\Common Files\\\\Intel\\\\WirelessCommon\\\\;C:\\\\Program Files\\\\MacType;F:\\\\Go\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;C:\\\\Users\\\\pengq\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps;F:\\\\PHPTutorial\\\\php\\\\php-7.2.1-nts\\\\php.exe;C:\\\\Users\\\\pengq\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\pengq\\\\AppData\\\\Roaming\\\\Composer\\\\vendor\\\\bin;C:\\\\Users\\\\pengq\\\\go\\\\bin;C:\\\\Users\\\\pengq\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps;C:\\\\Users\\\\pengq\\\\AppData\\\\Local\\\\Programs\\\\Fiddler;C:\\\\Users\\\\pengq\\\\AppData\\\\Local\\\\Programs\\\\Microsoft VS Code\\\\bin\",\"SYSTEMROOT\":\"C:\\\\WINDOWS\",\"COMSPEC\":\"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\",\"PATHEXT\":\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\",\"WINDIR\":\"C:\\\\WINDOWS\",\"PHP_FCGI_MAX_REQUESTS\":\"1000\",\"PHPRC\":\"F:\\/phpStudy\\/PHPTutorial\\/php\\/php-7.2.1-nts\\/\",\"_FCGI_SHUTDOWN_EVENT_\":\"2464\",\"SCRIPT_NAME\":\"\\/index.php\",\"REQUEST_URI\":\"\\/api\\/test\",\"QUERY_STRING\":\"\",\"REQUEST_METHOD\":\"GET\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"GATEWAY_INTERFACE\":\"CGI\\/1.1\",\"REDIRECT_URL\":\"\\/api\\/test\",\"REMOTE_PORT\":\"58474\",\"SCRIPT_FILENAME\":\"F:\\/phpStudy\\/PHPTutorial\\/WWW\\/fast_api\\/public\\/index.php\",\"SERVER_ADMIN\":\"admin@php.cn\",\"CONTEXT_DOCUMENT_ROOT\":\"F:\\/phpStudy\\/PHPTutorial\\/WWW\\/fast_api\\/public\",\"CONTEXT_PREFIX\":\"\",\"REQUEST_SCHEME\":\"http\",\"DOCUMENT_ROOT\":\"F:\\/phpStudy\\/PHPTutorial\\/WWW\\/fast_api\\/public\",\"REMOTE_ADDR\":\"127.0.0.1\",\"SERVER_PORT\":\"80\",\"SERVER_ADDR\":\"127.0.0.1\",\"SERVER_NAME\":\"base.com\",\"SERVER_SOFTWARE\":\"Apache\\/2.4.23 (Win32) OpenSSL\\/1.0.2j mod_fcgid\\/2.3.9\",\"SERVER_SIGNATURE\":\"\",\"SystemRoot\":\"C:\\\\WINDOWS\",\"HTTP_COOKIE\":\"_ga=GA1.2.1446302998.1563933455; PHPSESSID=im1ncm78lkfdv4hovrvb5iami2\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate\",\"HTTP_USER_AGENT\":\"apizza-extension\",\"HTTP_ACCEPT\":\"*\\/*\",\"HTTP_CONNECTION\":\"close\",\"HTTP_HOST\":\"base.com\",\"REDIRECT_STATUS\":\"200\",\"REDIRECT_PATH_INFO\":\"api\\/test\",\"FCGI_ROLE\":\"RESPONDER\",\"PHP_SELF\":\"\\/index.php\",\"REQUEST_TIME_FLOAT\":1569294166.0149059,\"REQUEST_TIME\":1569294166,\"PATH_INFO\":\"api\\/test\"},\"Environment Variables\":[]},\"echo\":\"\"}', NULL);

-- ----------------------------
-- Table structure for db_admin
-- ----------------------------
DROP TABLE IF EXISTS `db_admin`;
CREATE TABLE `db_admin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '失败次数',
  `logintime` int(10) NULL DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录IP',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '管理员表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of db_admin
-- ----------------------------
INSERT INTO `db_admin` VALUES (1, 'admin', 'Admin😀', 'fefa28052d9998ec5d8b37533608c84a', 'f10955', '/uploads/20190717/479b888adad78a4fde5a83fdc93de835.jpg', 'lzqqdy@qq.com', 0, 1570846143, '127.0.0.1', 1492186163, 1570846143, '43e42f89-60b0-43ba-9ab1-c06f21460c12', 'normal');
INSERT INTO `db_admin` VALUES (2, 'test', 'test', 'd593c69a1b77aa0eb1621480224bdb5e', 'f6U5IZ', '/assets/img/avatar.png', 'lzqqdy@163.com', 0, 1570846100, '127.0.0.1', 1570846059, 1570846100, '74106c60-33ca-4c7c-80b9-31b31345cd11', 'normal');

-- ----------------------------
-- Table structure for db_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `db_admin_log`;
CREATE TABLE `db_admin_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '管理员日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of db_admin_log
-- ----------------------------
INSERT INTO `db_admin_log` VALUES (1, 1, 'admin', '/', '登录', '{\"__token__\":\"e6ed26ffca1af19d868eb666ae757f3c\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"472b66ac781b575ee059e10428882fec7q\",\"geetest_validate\":\"fae13836f9d4cc0bc33702533c43d1fb\",\"geetest_seccode\":\"fae13836f9d4cc0bc33702533c43d1fb|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1569296925);
INSERT INTO `db_admin_log` VALUES (2, 1, 'admin', '/admin/addon/state', '插件管理 禁用启用', '{\"name\":\"log\",\"action\":\"disable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1569296956);
INSERT INTO `db_admin_log` VALUES (3, 1, 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1569296957);
INSERT INTO `db_admin_log` VALUES (4, 1, 'admin', '/admin/addon/upgrade', '', '{\"name\":\"log\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.4\",\"faversion\":\"1.0.0.20190705_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1569296959);
INSERT INTO `db_admin_log` VALUES (5, 1, 'admin', '/admin/addon/uninstall', '插件管理 卸载', '{\"name\":\"log\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1569296962);
INSERT INTO `db_admin_log` VALUES (6, 1, 'admin', '/?url=%2Fadmin%2Fcategory%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/admin\\/category?ref=addtabs\",\"__token__\":\"366eeaf23d03d1a787a55ac26bc6ba21\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"bbca429ca7e354e95388df1d5877a8e9gi\",\"geetest_validate\":\"cf0e48d7ea528b0df1e2fa1bb083e0f7\",\"geetest_seccode\":\"cf0e48d7ea528b0df1e2fa1bb083e0f7|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1569316447);
INSERT INTO `db_admin_log` VALUES (7, 1, 'admin', '/', '登录', '{\"__token__\":\"e48f3f34e5c77ce81324ce9fe7344eca\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"f76cbc499216a521e7d1082aa485f0ecl9\",\"geetest_validate\":\"0900dc0666d5bb124c86dd2f7cbecf2c\",\"geetest_seccode\":\"0900dc0666d5bb124c86dd2f7cbecf2c|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1569390956);
INSERT INTO `db_admin_log` VALUES (8, 0, 'Unknown', '/', '登录', '{\"__token__\":\"dec8ea5819e0d442ef25b9bb7136fa71\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"6669ddeef3f7e4929049317a3c9b43a2ir\",\"geetest_validate\":\"879db375c2c405e2440f7605db9dfe2a\",\"geetest_seccode\":\"879db375c2c405e2440f7605db9dfe2a|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570841845);
INSERT INTO `db_admin_log` VALUES (9, 0, 'Unknown', '/', '登录', '{\"__token__\":\"604c1aba90d36614a49bb2e3620eeac2\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"39bfff63c506a65120c5160cbe48236132\",\"geetest_validate\":\"777cd18642026674d64da7370bc7f33c\",\"geetest_seccode\":\"777cd18642026674d64da7370bc7f33c|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570841865);
INSERT INTO `db_admin_log` VALUES (10, 0, 'Unknown', '/', '', '{\"__token__\":\"d025ea53ba81c6d38ad9d38de3356606\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"\",\"geetest_validate\":\"\",\"geetest_seccode\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570841874);
INSERT INTO `db_admin_log` VALUES (11, 0, 'Unknown', '/', '登录', '{\"__token__\":\"11718f1a744540fd1f5cb25378377c3f\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"ae702390baaccdf0128ef27bce142c0big\",\"geetest_validate\":\"e4bfe38141ca5452b1391f099245a59c\",\"geetest_seccode\":\"e4bfe38141ca5452b1391f099245a59c|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570841879);
INSERT INTO `db_admin_log` VALUES (12, 1, 'admin', '/', '登录', '{\"__token__\":\"0d012f8d54d33a8d51c005ca88765be6\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"a9ca1b264b30e61d2602831971c0b79bgf\",\"geetest_validate\":\"0e902d6b8b7e9fc4eebe7072b8313a63\",\"geetest_seccode\":\"0e902d6b8b7e9fc4eebe7072b8313a63|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570841905);
INSERT INTO `db_admin_log` VALUES (13, 0, 'Unknown', '/', '', '{\"__token__\":\"32d9c9480d83acadd9288fd9cefd2641\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"\",\"geetest_validate\":\"\",\"geetest_seccode\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570845939);
INSERT INTO `db_admin_log` VALUES (14, 1, 'admin', '/', '登录', '{\"__token__\":\"185b4f0b3c2ff035a91bb91d558541bd\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"24414d6ab328e9bf4d989c3078e5f2527z\",\"geetest_validate\":\"886bf98aee19873e967ab01e7b9b51cf\",\"geetest_seccode\":\"886bf98aee19873e967ab01e7b9b51cf|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570845952);
INSERT INTO `db_admin_log` VALUES (15, 1, 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"2\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570846016);
INSERT INTO `db_admin_log` VALUES (16, 1, 'admin', '/admin/auth/admin/add?dialog=1', '权限管理 管理员管理 添加', '{\"dialog\":\"1\",\"__token__\":\"86eb25b0670340fd65c0be4d57533851\",\"group\":[\"2\"],\"row\":{\"username\":\"test\",\"email\":\"lzqqdy@qq.com\",\"nickname\":\"test\",\"password\":\"admin123\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570846043);
INSERT INTO `db_admin_log` VALUES (17, 1, 'admin', '/admin/auth/admin/add?dialog=1', '权限管理 管理员管理 添加', '{\"dialog\":\"1\",\"__token__\":\"550ee716e0a9acb7d588e383bcbd757c\",\"group\":[\"2\"],\"row\":{\"username\":\"test\",\"email\":\"lzqqdy@qq.com\",\"nickname\":\"test\",\"password\":\"admin123\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570846053);
INSERT INTO `db_admin_log` VALUES (18, 1, 'admin', '/admin/auth/admin/add?dialog=1', '权限管理 管理员管理 添加', '{\"dialog\":\"1\",\"__token__\":\"5c2df8d93c2c6fbd7f67853741b7fc4f\",\"group\":[\"2\"],\"row\":{\"username\":\"test\",\"email\":\"lzqqdy@163.com\",\"nickname\":\"test\",\"password\":\"admin123\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570846059);
INSERT INTO `db_admin_log` VALUES (19, 2, 'test', '/', '登录', '{\"__token__\":\"e87e16ea978b0ef501edd2705f06cca8\",\"username\":\"test\",\"captcha\":\"ok\",\"geetest_challenge\":\"01171d8e4858440785862d4bacd091aam3\",\"geetest_validate\":\"c414fccb3cdb85958ca69f28be7204c6\",\"geetest_seccode\":\"c414fccb3cdb85958ca69f28be7204c6|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570846100);
INSERT INTO `db_admin_log` VALUES (20, 1, 'admin', '/', '登录', '{\"__token__\":\"1d6a5532d4a1c335c90d82524c6092e8\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"64494cb2551c9332990e6ebc675a883d8u\",\"geetest_validate\":\"733628c4ed5ec008e87b4ac6a58026c9\",\"geetest_seccode\":\"733628c4ed5ec008e87b4ac6a58026c9|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570846144);

-- ----------------------------
-- Table structure for db_attachment
-- ----------------------------
DROP TABLE IF EXISTS `db_attachment`;
CREATE TABLE `db_attachment`  (
  `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '图片帧数',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文件大小',
  `mimetype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建日期',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `uploadtime` int(10) NULL DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '附件表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of db_attachment
-- ----------------------------
INSERT INTO `db_attachment` VALUES (1, 1, 0, '/assets/img/qrcode.png', '150', '150', 'png', 0, 21859, 'image/png', '', 1499681848, 1499681848, 1499681848, 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');
INSERT INTO `db_attachment` VALUES (2, 1, 0, '/uploads/20190903/0c16f62f9be52a153a93f4c9a682ea51.jpg', '640', '639', 'jpg', 0, 40189, 'image/jpeg', '{\"name\":\"lzqqdy.jpg\"}', 1567503469, 1567503469, 1567503469, 'local', 'ddcab515db4474ca48fcb04bbc68c6471501e0ed');

-- ----------------------------
-- Table structure for db_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `db_auth_group`;
CREATE TABLE `db_auth_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父组别',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '规则ID',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of db_auth_group
-- ----------------------------
INSERT INTO `db_auth_group` VALUES (1, 0, 'Admin group', '*', 1490883540, 149088354, 'normal');
INSERT INTO `db_auth_group` VALUES (2, 1, 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', 1490883540, 1505465692, 'normal');
INSERT INTO `db_auth_group` VALUES (3, 2, 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', 1490883540, 1502205322, 'normal');
INSERT INTO `db_auth_group` VALUES (4, 1, 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', 1490883540, 1502205350, 'normal');
INSERT INTO `db_auth_group` VALUES (5, 2, 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', 1490883540, 1502205344, 'normal');

-- ----------------------------
-- Table structure for db_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `db_auth_group_access`;
CREATE TABLE `db_auth_group_access`  (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '会员ID',
  `group_id` int(10) UNSIGNED NOT NULL COMMENT '级别ID',
  UNIQUE INDEX `uid_group_id`(`uid`, `group_id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `group_id`(`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限分组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of db_auth_group_access
-- ----------------------------
INSERT INTO `db_auth_group_access` VALUES (1, 1);
INSERT INTO `db_auth_group_access` VALUES (2, 2);

-- ----------------------------
-- Table structure for db_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `db_auth_rule`;
CREATE TABLE `db_auth_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否为菜单',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `weigh`(`weigh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '节点表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of db_auth_rule
-- ----------------------------
INSERT INTO `db_auth_rule` VALUES (1, 'file', 0, 'dashboard', 'Dashboard', 'fa fa-dashboard', '', 'Dashboard tips', 1, 1497429920, 1497429920, 143, 'normal');
INSERT INTO `db_auth_rule` VALUES (2, 'file', 0, 'general', 'General', 'fa fa-cogs', '', '', 1, 1497429920, 1497430169, 137, 'normal');
INSERT INTO `db_auth_rule` VALUES (3, 'file', 0, 'category', 'Category', 'fa fa-leaf', '', 'Category tips', 1, 1497429920, 1497429920, 119, 'normal');
INSERT INTO `db_auth_rule` VALUES (4, 'file', 0, 'addon', 'Addon', 'fa fa-rocket', '', 'Addon tips', 1, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (5, 'file', 0, 'auth', 'Auth', 'fa fa-group', '', '', 1, 1497429920, 1497430092, 99, 'normal');
INSERT INTO `db_auth_rule` VALUES (6, 'file', 2, 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', 1, 1497429920, 1497430683, 60, 'normal');
INSERT INTO `db_auth_rule` VALUES (7, 'file', 2, 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', 1, 1497429920, 1497430699, 53, 'normal');
INSERT INTO `db_auth_rule` VALUES (8, 'file', 2, 'general/profile', 'Profile', 'fa fa-user', '', '', 1, 1497429920, 1497429920, 34, 'normal');
INSERT INTO `db_auth_rule` VALUES (9, 'file', 5, 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', 1, 1497429920, 1497430320, 118, 'normal');
INSERT INTO `db_auth_rule` VALUES (10, 'file', 5, 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', 1, 1497429920, 1497430307, 113, 'normal');
INSERT INTO `db_auth_rule` VALUES (11, 'file', 5, 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', 1, 1497429920, 1497429920, 109, 'normal');
INSERT INTO `db_auth_rule` VALUES (12, 'file', 5, 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', 1, 1497429920, 1497430581, 104, 'normal');
INSERT INTO `db_auth_rule` VALUES (13, 'file', 1, 'dashboard/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 136, 'normal');
INSERT INTO `db_auth_rule` VALUES (14, 'file', 1, 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 135, 'normal');
INSERT INTO `db_auth_rule` VALUES (15, 'file', 1, 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 133, 'normal');
INSERT INTO `db_auth_rule` VALUES (16, 'file', 1, 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 134, 'normal');
INSERT INTO `db_auth_rule` VALUES (17, 'file', 1, 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 132, 'normal');
INSERT INTO `db_auth_rule` VALUES (18, 'file', 6, 'general/config/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 52, 'normal');
INSERT INTO `db_auth_rule` VALUES (19, 'file', 6, 'general/config/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 51, 'normal');
INSERT INTO `db_auth_rule` VALUES (20, 'file', 6, 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 50, 'normal');
INSERT INTO `db_auth_rule` VALUES (21, 'file', 6, 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 49, 'normal');
INSERT INTO `db_auth_rule` VALUES (22, 'file', 6, 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 48, 'normal');
INSERT INTO `db_auth_rule` VALUES (23, 'file', 7, 'general/attachment/index', 'View', 'fa fa-circle-o', '', 'Attachment tips', 0, 1497429920, 1497429920, 59, 'normal');
INSERT INTO `db_auth_rule` VALUES (24, 'file', 7, 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 58, 'normal');
INSERT INTO `db_auth_rule` VALUES (25, 'file', 7, 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 57, 'normal');
INSERT INTO `db_auth_rule` VALUES (26, 'file', 7, 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 56, 'normal');
INSERT INTO `db_auth_rule` VALUES (27, 'file', 7, 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 55, 'normal');
INSERT INTO `db_auth_rule` VALUES (28, 'file', 7, 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 54, 'normal');
INSERT INTO `db_auth_rule` VALUES (29, 'file', 8, 'general/profile/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 33, 'normal');
INSERT INTO `db_auth_rule` VALUES (30, 'file', 8, 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 32, 'normal');
INSERT INTO `db_auth_rule` VALUES (31, 'file', 8, 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 31, 'normal');
INSERT INTO `db_auth_rule` VALUES (32, 'file', 8, 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 30, 'normal');
INSERT INTO `db_auth_rule` VALUES (33, 'file', 8, 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 29, 'normal');
INSERT INTO `db_auth_rule` VALUES (34, 'file', 8, 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 28, 'normal');
INSERT INTO `db_auth_rule` VALUES (35, 'file', 3, 'category/index', 'View', 'fa fa-circle-o', '', 'Category tips', 0, 1497429920, 1497429920, 142, 'normal');
INSERT INTO `db_auth_rule` VALUES (36, 'file', 3, 'category/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 141, 'normal');
INSERT INTO `db_auth_rule` VALUES (37, 'file', 3, 'category/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 140, 'normal');
INSERT INTO `db_auth_rule` VALUES (38, 'file', 3, 'category/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 139, 'normal');
INSERT INTO `db_auth_rule` VALUES (39, 'file', 3, 'category/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 138, 'normal');
INSERT INTO `db_auth_rule` VALUES (40, 'file', 9, 'auth/admin/index', 'View', 'fa fa-circle-o', '', 'Admin tips', 0, 1497429920, 1497429920, 117, 'normal');
INSERT INTO `db_auth_rule` VALUES (41, 'file', 9, 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 116, 'normal');
INSERT INTO `db_auth_rule` VALUES (42, 'file', 9, 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 115, 'normal');
INSERT INTO `db_auth_rule` VALUES (43, 'file', 9, 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 114, 'normal');
INSERT INTO `db_auth_rule` VALUES (44, 'file', 10, 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', 'Admin log tips', 0, 1497429920, 1497429920, 112, 'normal');
INSERT INTO `db_auth_rule` VALUES (45, 'file', 10, 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 111, 'normal');
INSERT INTO `db_auth_rule` VALUES (46, 'file', 10, 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 110, 'normal');
INSERT INTO `db_auth_rule` VALUES (47, 'file', 11, 'auth/group/index', 'View', 'fa fa-circle-o', '', 'Group tips', 0, 1497429920, 1497429920, 108, 'normal');
INSERT INTO `db_auth_rule` VALUES (48, 'file', 11, 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 107, 'normal');
INSERT INTO `db_auth_rule` VALUES (49, 'file', 11, 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 106, 'normal');
INSERT INTO `db_auth_rule` VALUES (50, 'file', 11, 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 105, 'normal');
INSERT INTO `db_auth_rule` VALUES (51, 'file', 12, 'auth/rule/index', 'View', 'fa fa-circle-o', '', 'Rule tips', 0, 1497429920, 1497429920, 103, 'normal');
INSERT INTO `db_auth_rule` VALUES (52, 'file', 12, 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 102, 'normal');
INSERT INTO `db_auth_rule` VALUES (53, 'file', 12, 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 101, 'normal');
INSERT INTO `db_auth_rule` VALUES (54, 'file', 12, 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 100, 'normal');
INSERT INTO `db_auth_rule` VALUES (55, 'file', 4, 'addon/index', 'View', 'fa fa-circle-o', '', 'Addon tips', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (56, 'file', 4, 'addon/add', 'Add', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (57, 'file', 4, 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (58, 'file', 4, 'addon/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (59, 'file', 4, 'addon/local', 'Local install', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (60, 'file', 4, 'addon/state', 'Update state', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (61, 'file', 4, 'addon/install', 'Install', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (62, 'file', 4, 'addon/uninstall', 'Uninstall', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (63, 'file', 4, 'addon/config', 'Setting', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (64, 'file', 4, 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (65, 'file', 4, 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (66, 'file', 0, 'user', 'User', 'fa fa-list', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (67, 'file', 66, 'user/user', 'User', 'fa fa-user', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (68, 'file', 67, 'user/user/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (69, 'file', 67, 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (70, 'file', 67, 'user/user/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (71, 'file', 67, 'user/user/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (72, 'file', 67, 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (73, 'file', 66, 'user/group', 'User group', 'fa fa-users', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (74, 'file', 73, 'user/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (75, 'file', 73, 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (76, 'file', 73, 'user/group/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (77, 'file', 73, 'user/group/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (78, 'file', 73, 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (79, 'file', 66, 'user/rule', 'User rule', 'fa fa-circle-o', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (80, 'file', 79, 'user/rule/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (81, 'file', 79, 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (82, 'file', 79, 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (83, 'file', 79, 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (84, 'file', 79, 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (85, 'file', 0, 'command', '在线命令管理', 'fa fa-terminal', '', '', 1, 1567502540, 1567502540, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (86, 'file', 85, 'command/index', '查看', 'fa fa-circle-o', '', '', 0, 1567502540, 1567502540, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (87, 'file', 85, 'command/add', '添加', 'fa fa-circle-o', '', '', 0, 1567502540, 1567502540, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (88, 'file', 85, 'command/detail', '详情', 'fa fa-circle-o', '', '', 0, 1567502540, 1567502540, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (89, 'file', 85, 'command/execute', '运行', 'fa fa-circle-o', '', '', 0, 1567502540, 1567502540, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (90, 'file', 85, 'command/del', '删除', 'fa fa-circle-o', '', '', 0, 1567502540, 1567502540, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (91, 'file', 85, 'command/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1567502540, 1567502540, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (92, 'file', 2, 'general/crontab', '定时任务', 'fa fa-tasks', '', '类似于Linux的Crontab定时任务,可以按照设定的时间进行任务的执行,目前仅支持三种任务:请求URL、执行SQL、执行Shell', 1, 1567502547, 1567502547, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (93, 'file', 92, 'general/crontab/index', '查看', 'fa fa-circle-o', '', '', 0, 1567502547, 1567502547, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (94, 'file', 92, 'general/crontab/add', '添加', 'fa fa-circle-o', '', '', 0, 1567502547, 1567502547, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (95, 'file', 92, 'general/crontab/edit', '编辑 ', 'fa fa-circle-o', '', '', 0, 1567502547, 1567502547, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (96, 'file', 92, 'general/crontab/del', '删除', 'fa fa-circle-o', '', '', 0, 1567502547, 1567502547, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (97, 'file', 92, 'general/crontab/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1567502547, 1567502547, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (98, 'file', 0, 'test', '测试管理', 'fa fa-circle-o\r', '', '', 1, 1567503524, 1567503524, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (99, 'file', 98, 'test/index', '查看', 'fa fa-circle-o', '', '', 0, 1567503524, 1567503524, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (100, 'file', 98, 'test/recyclebin', '回收站', 'fa fa-circle-o', '', '', 0, 1567503524, 1567503524, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (101, 'file', 98, 'test/add', '添加', 'fa fa-circle-o', '', '', 0, 1567503524, 1567503524, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (102, 'file', 98, 'test/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1567503524, 1567503524, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (103, 'file', 98, 'test/del', '删除', 'fa fa-circle-o', '', '', 0, 1567503524, 1567503524, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (104, 'file', 98, 'test/destroy', '真实删除', 'fa fa-circle-o', '', '', 0, 1567503524, 1567503524, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (105, 'file', 98, 'test/restore', '还原', 'fa fa-circle-o', '', '', 0, 1567503524, 1567503524, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (106, 'file', 98, 'test/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1567503524, 1567503524, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (107, 'file', 2, 'general/database', '数据库管理', 'fa fa-database', '', '可在线进行一些简单的数据库表优化或修复,查看表结构和数据。也可以进行SQL语句的操作', 1, 1567563264, 1567563264, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (108, 'file', 107, 'general/database/index', '查看', 'fa fa-circle-o', '', '', 0, 1567563264, 1567563264, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (109, 'file', 107, 'general/database/query', '查询', 'fa fa-circle-o', '', '', 0, 1567563264, 1567563264, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (110, 'file', 107, 'general/database/backup', '备份', 'fa fa-circle-o', '', '', 0, 1567563264, 1567563264, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (111, 'file', 107, 'general/database/restore', '恢复', 'fa fa-circle-o', '', '', 0, 1567563264, 1567563264, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (116, 'file', 2, 'abnormal', '上报异常记录', 'fa fa-exclamation-triangle', '', '', 1, 1569290801, 1569290944, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (117, 'file', 116, 'abnormal/index', '查看', 'fa fa-circle-o', '', '', 0, 1569290801, 1569290801, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (118, 'file', 116, 'abnormal/recyclebin', '回收站', 'fa fa-circle-o', '', '', 0, 1569290801, 1569290801, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (119, 'file', 116, 'abnormal/add', '添加', 'fa fa-circle-o', '', '', 0, 1569290801, 1569290801, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (120, 'file', 116, 'abnormal/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1569290801, 1569290801, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (121, 'file', 116, 'abnormal/del', '删除', 'fa fa-circle-o', '', '', 0, 1569290801, 1569290801, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (122, 'file', 116, 'abnormal/destroy', '真实删除', 'fa fa-circle-o', '', '', 0, 1569290801, 1569290801, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (123, 'file', 116, 'abnormal/restore', '还原', 'fa fa-circle-o', '', '', 0, 1569290801, 1569290801, 0, 'normal');
INSERT INTO `db_auth_rule` VALUES (124, 'file', 116, 'abnormal/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1569290801, 1569290801, 0, 'normal');

-- ----------------------------
-- Table structure for db_category
-- ----------------------------
DROP TABLE IF EXISTS `db_category`;
CREATE TABLE `db_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父ID',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `weigh`(`weigh`, `id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分类表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of db_category
-- ----------------------------
INSERT INTO `db_category` VALUES (1, 0, 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', 1495262190, 1495262190, 1, 'normal');
INSERT INTO `db_category` VALUES (2, 0, 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', 1495262244, 1495262244, 2, 'normal');
INSERT INTO `db_category` VALUES (3, 2, 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', 1495262288, 1495262288, 3, 'normal');
INSERT INTO `db_category` VALUES (4, 2, 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', 1495262317, 1495262317, 4, 'normal');
INSERT INTO `db_category` VALUES (5, 0, 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', 1495262336, 1499681850, 5, 'normal');
INSERT INTO `db_category` VALUES (6, 5, 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', 1495262357, 1495262357, 6, 'normal');
INSERT INTO `db_category` VALUES (7, 5, 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', 1495262391, 1495262391, 7, 'normal');
INSERT INTO `db_category` VALUES (8, 6, 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', 1495262424, 1495262424, 8, 'normal');
INSERT INTO `db_category` VALUES (9, 6, 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', 1495262456, 1495262456, 9, 'normal');
INSERT INTO `db_category` VALUES (10, 7, 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', 1495262487, 1495262487, 10, 'normal');
INSERT INTO `db_category` VALUES (11, 7, 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', 1495262515, 1495262515, 11, 'normal');
INSERT INTO `db_category` VALUES (12, 0, 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', 1497015727, 1497015727, 12, 'normal');
INSERT INTO `db_category` VALUES (13, 0, 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', 1497015738, 1497015738, 13, 'normal');

-- ----------------------------
-- Table structure for db_command
-- ----------------------------
DROP TABLE IF EXISTS `db_command`;
CREATE TABLE `db_command`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '类型',
  `params` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '参数',
  `command` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '命令',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '返回结果',
  `executetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '执行时间',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `status` enum('successed','failured') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'failured' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线命令表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of db_command
-- ----------------------------
INSERT INTO `db_command` VALUES (2, 'menu', '[\"--controller=Test\"]', 'php think menu --controller=Test', 'Build Successed!', 1567503524, 1567503524, 1567503524, 'successed');
INSERT INTO `db_command` VALUES (3, 'crud', '[\"--table=db_abnormal\"]', 'php think crud --table=db_abnormal', 'Build Successed', 1569290793, 1569290793, 1569290793, 'successed');
INSERT INTO `db_command` VALUES (4, 'menu', '[\"--controller=Abnormal\"]', 'php think menu --controller=Abnormal', 'Build Successed!', 1569290801, 1569290801, 1569290801, 'successed');

-- ----------------------------
-- Table structure for db_config
-- ----------------------------
DROP TABLE IF EXISTS `db_config`;
CREATE TABLE `db_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '变量值',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of db_config
-- ----------------------------
INSERT INTO `db_config` VALUES (1, 'name', 'basic', 'Site name', '请填写站点名称', 'string', 'FastAdmin', '', 'required', '');
INSERT INTO `db_config` VALUES (2, 'beian', 'basic', 'Beian', '粤ICP备15054802号-4', 'string', '', '', '', '');
INSERT INTO `db_config` VALUES (3, 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `db_config` VALUES (4, 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `db_config` VALUES (5, 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `db_config` VALUES (6, 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `db_config` VALUES (7, 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `db_config` VALUES (8, 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `db_config` VALUES (9, 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `db_config` VALUES (10, 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `db_config` VALUES (11, 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `db_config` VALUES (12, 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `db_config` VALUES (13, 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `db_config` VALUES (14, 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `db_config` VALUES (15, 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `db_config` VALUES (16, 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `db_config` VALUES (17, 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');

-- ----------------------------
-- Table structure for db_crontab
-- ----------------------------
DROP TABLE IF EXISTS `db_crontab`;
CREATE TABLE `db_crontab`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '事件类型',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '事件标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '事件内容',
  `schedule` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Crontab格式',
  `sleep` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '延迟秒数执行',
  `maximums` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最大执行次数 0为不限',
  `executes` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '已经执行的次数',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `begintime` int(10) NOT NULL DEFAULT 0 COMMENT '开始时间',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '结束时间',
  `executetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后执行时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` enum('completed','expired','hidden','normal') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of db_crontab
-- ----------------------------
INSERT INTO `db_crontab` VALUES (1, 'url', '请求FastAdmin', 'http://www.fastadmin.net', '* * * * *', 0, 0, 13548, 1497070825, 1501253101, 1483200000, 1546272000, 1501253101, 1, 'normal');
INSERT INTO `db_crontab` VALUES (2, 'sql', '查询一条SQL', 'SELECT 1;', '* * * * *', 0, 0, 13548, 1497071095, 1501253101, 1483200000, 1546272000, 1501253101, 2, 'normal');

-- ----------------------------
-- Table structure for db_ems
-- ----------------------------
DROP TABLE IF EXISTS `db_ems`;
CREATE TABLE `db_ems`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '事件',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证次数',
  `ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '邮箱验证码表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for db_sms
-- ----------------------------
DROP TABLE IF EXISTS `db_sms`;
CREATE TABLE `db_sms`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证次数',
  `ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '短信验证码表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for db_test
-- ----------------------------
DROP TABLE IF EXISTS `db_test`;
CREATE TABLE `db_test`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类ID(单选)',
  `category_ids` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '省市',
  `json` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `price` float(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '价格',
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击',
  `startdate` date NULL DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime NULL DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) NULL DEFAULT NULL COMMENT '年',
  `times` time NULL DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) NULL DEFAULT NULL COMMENT '刷新时间(int)',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) NULL DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT 0 COMMENT '开关',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '测试表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of db_test
-- ----------------------------
INSERT INTO `db_test` VALUES (1, 0, 12, '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p><p>但是我</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '{\"a\":\"1\",\"b\":\"2\"}', 0.00, 0, '2017-07-10', '2017-07-10 18:24:45', 2017, '18:24:45', 1499682285, 1499682526, 1568713924, NULL, 0, 1, 'normal', '1');

-- ----------------------------
-- Table structure for db_user
-- ----------------------------
DROP TABLE IF EXISTS `db_user`;
CREATE TABLE `db_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '组别ID',
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '微信唯一ID',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码(默认123456)',
  `salt` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '等级',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '格言',
  `money` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '余额',
  `score` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分',
  `successions` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '连续登录天数',
  `maxsuccessions` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '最大连续登录天数',
  `prevtime` int(10) NULL DEFAULT NULL COMMENT '上次登录时间',
  `logintime` int(10) NULL DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '失败次数',
  `joinip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) NULL DEFAULT NULL COMMENT '加入时间',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) NULL DEFAULT NULL COMMENT '删除时间',
  `token` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'Token',
  `status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '状态:0=禁用,1=启用',
  `verification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '验证',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `email`(`email`) USING BTREE,
  INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of db_user
-- ----------------------------
INSERT INTO `db_user` VALUES (1, 1, '', 'admin', '萧小咩😍', 'c13f62012fd6a8fdf06b3452a94430e5', 'rpR6Bv', 'admin@163.com', '13888888888', '/uploads/20190903/0c16f62f9be52a153a93f4c9a682ea51.jpg', 0, 0, '2017-04-15', '', 0.00, 0, 1, 1, 1516170492, 1516171614, '127.0.0.1', 0, '127.0.0.1', 1491461418, 0, 1568703191, NULL, '', '1', '');

-- ----------------------------
-- Table structure for db_user_group
-- ----------------------------
DROP TABLE IF EXISTS `db_user_group`;
CREATE TABLE `db_user_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '权限节点',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of db_user_group
-- ----------------------------
INSERT INTO `db_user_group` VALUES (1, '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', 1515386468, 1516168298, 'normal');

-- ----------------------------
-- Table structure for db_user_money_log
-- ----------------------------
DROP TABLE IF EXISTS `db_user_money_log`;
CREATE TABLE `db_user_money_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更余额',
  `before` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更前余额',
  `after` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更后余额',
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员余额变动表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of db_user_money_log
-- ----------------------------
INSERT INTO `db_user_money_log` VALUES (1, 1, 20.00, 0.00, 20.00, '管理员变更金额', 1567504972);
INSERT INTO `db_user_money_log` VALUES (2, 1, -20.00, 20.00, 0.00, '管理员变更金额', 1567504994);

-- ----------------------------
-- Table structure for db_user_rule
-- ----------------------------
DROP TABLE IF EXISTS `db_user_rule`;
CREATE TABLE `db_user_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) NULL DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '标题',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) NULL DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NULL DEFAULT 0 COMMENT '权重',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员规则表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of db_user_rule
-- ----------------------------
INSERT INTO `db_user_rule` VALUES (1, 0, 'index', '前台', '', 1, 1516168079, 1516168079, 1, 'normal');
INSERT INTO `db_user_rule` VALUES (2, 0, 'api', 'API接口', '', 1, 1516168062, 1516168062, 2, 'normal');
INSERT INTO `db_user_rule` VALUES (3, 1, 'user', '会员模块', '', 1, 1515386221, 1516168103, 12, 'normal');
INSERT INTO `db_user_rule` VALUES (4, 2, 'user', '会员模块', '', 1, 1515386221, 1516168092, 11, 'normal');
INSERT INTO `db_user_rule` VALUES (5, 3, 'index/user/login', '登录', '', 0, 1515386247, 1515386247, 5, 'normal');
INSERT INTO `db_user_rule` VALUES (6, 3, 'index/user/register', '注册', '', 0, 1515386262, 1516015236, 7, 'normal');
INSERT INTO `db_user_rule` VALUES (7, 3, 'index/user/index', '会员中心', '', 0, 1516015012, 1516015012, 9, 'normal');
INSERT INTO `db_user_rule` VALUES (8, 3, 'index/user/profile', '个人资料', '', 0, 1516015012, 1516015012, 4, 'normal');
INSERT INTO `db_user_rule` VALUES (9, 4, 'api/user/login', '登录', '', 0, 1515386247, 1515386247, 6, 'normal');
INSERT INTO `db_user_rule` VALUES (10, 4, 'api/user/register', '注册', '', 0, 1515386262, 1516015236, 8, 'normal');
INSERT INTO `db_user_rule` VALUES (11, 4, 'api/user/index', '会员中心', '', 0, 1516015012, 1516015012, 10, 'normal');
INSERT INTO `db_user_rule` VALUES (12, 4, 'api/user/profile', '个人资料', '', 0, 1516015012, 1516015012, 3, 'normal');

-- ----------------------------
-- Table structure for db_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `db_user_score_log`;
CREATE TABLE `db_user_score_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT 0 COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT 0 COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT 0 COMMENT '变更后积分',
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员积分变动表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for db_user_token
-- ----------------------------
DROP TABLE IF EXISTS `db_user_token`;
CREATE TABLE `db_user_token`  (
  `token` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Token',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `expiretime` int(10) NULL DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员Token表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for db_version
-- ----------------------------
DROP TABLE IF EXISTS `db_version`;
CREATE TABLE `db_version`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `oldversion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '包大小',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '强制更新',
  `createtime` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '版本表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of db_version
-- ----------------------------
INSERT INTO `db_version` VALUES (1, '1.1.1,2', '1.2.1', '20M', '更新内容', 'https://www.fastadmin.net/download.html', 1, 1520425318, 0, 0, 'normal');

SET FOREIGN_KEY_CHECKS = 1;
