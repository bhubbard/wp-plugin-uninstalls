<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_settings_tab_thekua_s_categories');
delete_site_option('wc_settings_tab_thekua_s_categories');

