<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zhanzhangb_share_location');
delete_site_option('zhanzhangb_share_location');
delete_option('zhanzhangb_share_weixin_AppID');
delete_site_option('zhanzhangb_share_weixin_AppID');
delete_option('zhanzhangb_share_weixin_AppSecret');
delete_site_option('zhanzhangb_share_weixin_AppSecret');
delete_option('zhanzhangb_share_weibo_Appkey');
delete_site_option('zhanzhangb_share_weibo_Appkey');
delete_option('zhanzhangb_share_weibo_uid');
delete_site_option('zhanzhangb_share_weibo_uid');

