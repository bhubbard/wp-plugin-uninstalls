<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wafwc_send_to');
delete_site_option('wafwc_send_to');
delete_option('wafwc_template_name');
delete_site_option('wafwc_template_name');
delete_option('wafwc_template_language');
delete_site_option('wafwc_template_language');
delete_option('wafwc_data_option');
delete_site_option('wafwc_data_option');
delete_option('wafwc-wa-phone-id');
delete_site_option('wafwc-wa-phone-id');
delete_option('wafwc-wa-token');
delete_site_option('wafwc-wa-token');
delete_option('wafwc-wa-id');
delete_site_option('wafwc-wa-id');
delete_option('wafwc-enable-prefix');
delete_site_option('wafwc-enable-prefix');

