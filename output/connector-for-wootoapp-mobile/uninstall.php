<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wootoapp_blindkey');
delete_site_option('wootoapp_blindkey');
delete_option('WC_settings_wootoapp_livemode_enabled');
delete_site_option('WC_settings_wootoapp_livemode_enabled');
delete_option('WC_settings_wootoapp_site_id');
delete_site_option('WC_settings_wootoapp_site_id');
delete_option('WC_settings_wootoapp_secret_key');
delete_site_option('WC_settings_wootoapp_secret_key');

