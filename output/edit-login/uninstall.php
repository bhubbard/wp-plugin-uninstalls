<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('editLogin_login_logo_url');
delete_site_option('editLogin_login_logo_url');
delete_option('editLogin_login_logo_image');
delete_site_option('editLogin_login_logo_image');
delete_option('editLogin_login_bg_image');
delete_site_option('editLogin_login_bg_image');
delete_option('editLogin_login_custom_font');
delete_site_option('editLogin_login_custom_font');

