<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lolmi_login_page_url');
delete_site_option('lolmi_login_page_url');
delete_option('lolmi_logout_redirect_url');
delete_site_option('lolmi_logout_redirect_url');
delete_option('lolmi_login_redirect_url');
delete_site_option('lolmi_login_redirect_url');

