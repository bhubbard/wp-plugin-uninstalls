<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sogo_accessibility_settings');
delete_site_option('sogo_accessibility_settings');
delete_option('_sogo_acc_lk_status');
delete_site_option('_sogo_acc_lk_status');

