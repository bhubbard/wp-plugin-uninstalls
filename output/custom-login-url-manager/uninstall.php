<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clumanager_custom_login_url');
delete_site_option('clumanager_custom_login_url');
delete_option('clumanager_redirect_url');
delete_site_option('clumanager_redirect_url');
delete_option('clumanager_admin_notice_dismissed');
delete_site_option('clumanager_admin_notice_dismissed');

