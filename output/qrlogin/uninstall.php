<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qrlogin_del_http');
delete_site_option('qrlogin_del_http');
delete_option('qrlogin_timeout');
delete_site_option('qrlogin_timeout');
delete_option('qrlogin_poll_lifetime');
delete_site_option('qrlogin_poll_lifetime');
delete_option('qrlogin_post_timeout');
delete_site_option('qrlogin_post_timeout');
delete_option('qrlogin_login_timeout');
delete_site_option('qrlogin_login_timeout');
delete_option('qrlogin_qrcode_size');
delete_site_option('qrlogin_qrcode_size');
delete_option('qrlogin_qrcode_fore_color');
delete_site_option('qrlogin_qrcode_fore_color');
delete_option('qrlogin_qrcode_back_color');
delete_site_option('qrlogin_qrcode_back_color');

