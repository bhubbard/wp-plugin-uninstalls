<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_settings_wcl_settings_limit');
delete_site_option('wc_settings_wcl_settings_limit');
delete_option('wc_settings_wcl_settings_exclude');
delete_site_option('wc_settings_wcl_settings_exclude');
delete_option('wc_settings_wcl_settings_label');
delete_site_option('wc_settings_wcl_settings_label');

