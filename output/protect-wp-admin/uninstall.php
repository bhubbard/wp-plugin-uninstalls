<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pwa_active');
delete_site_option('pwa_active');
delete_option('pwa_rewrite_text');
delete_site_option('pwa_rewrite_text');
delete_option('pwa_restrict');
delete_site_option('pwa_restrict');
delete_option('pwa_logout');
delete_site_option('pwa_logout');
delete_option('pwa_allow_custom_users');
delete_site_option('pwa_allow_custom_users');
delete_option('pwa_logo_path');
delete_site_option('pwa_logo_path');
delete_option('pwa_login_page_bg_color');
delete_site_option('pwa_login_page_bg_color');
delete_option('pwa_login_page_color');
delete_site_option('pwa_login_page_color');

