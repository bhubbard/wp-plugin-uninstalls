<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mhfgfwc_rules_rev');
delete_site_option('mhfgfwc_rules_rev');
delete_option('mhfgfwc_button_styles');
delete_site_option('mhfgfwc_button_styles');
delete_option('mhfgfwc_settings');
delete_site_option('mhfgfwc_settings');

