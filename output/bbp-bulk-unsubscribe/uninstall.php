<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_bbp_admin_setting_callback_unsubscribe_from_all');
delete_site_option('_bbp_admin_setting_callback_unsubscribe_from_all');

