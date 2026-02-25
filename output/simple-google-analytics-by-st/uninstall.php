<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sgabst_option_text');
delete_site_option('sgabst_option_text');
delete_option('sgabst_option_chk');
delete_site_option('sgabst_option_chk');

// Delete Transients
delete_transient('sgabst-admin-notice-activation');
delete_site_transient('sgabst-admin-notice-activation');

