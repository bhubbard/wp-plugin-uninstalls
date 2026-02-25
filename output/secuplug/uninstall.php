<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('secuplug_settings');
delete_site_option('secuplug_settings');
delete_option('securefusion_settings');
delete_site_option('securefusion_settings');
delete_option('bad_bots_list');
delete_site_option('bad_bots_list');

// Delete Transients
delete_transient('securefusion_ssl_cert_data');
delete_site_transient('securefusion_ssl_cert_data');

