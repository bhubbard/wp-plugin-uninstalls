<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpkln_login_notification');
delete_site_option('wpkln_login_notification');
delete_option('wpkln_kaya_login_notification_admin_notices');
delete_site_option('wpkln_kaya_login_notification_admin_notices');

