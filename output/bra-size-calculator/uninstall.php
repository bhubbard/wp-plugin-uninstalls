<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bscp_btn_bg');
delete_site_option('bscp_btn_bg');
delete_option('bscp_btn_bg_hover');
delete_site_option('bscp_btn_bg_hover');
delete_option('bscp_btn_text');
delete_site_option('bscp_btn_text');
delete_option('bscp_btn_text_hover');
delete_site_option('bscp_btn_text_hover');

