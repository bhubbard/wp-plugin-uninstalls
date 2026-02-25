<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('engagebay_livechat_rest_api');
delete_site_option('engagebay_livechat_rest_api');
delete_option('engagebay_livechat_domain');
delete_site_option('engagebay_livechat_domain');
delete_option('engagebay_livechat_email');
delete_site_option('engagebay_livechat_email');
delete_option('engagebay_livechat_password');
delete_site_option('engagebay_livechat_password');
delete_option('engagebay_livechat_js_api');
delete_site_option('engagebay_livechat_js_api');
delete_option('engagebay_livechat_enabled');
delete_site_option('engagebay_livechat_enabled');

