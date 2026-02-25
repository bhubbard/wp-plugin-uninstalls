<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_settings_tab_thekua_o_banner_url');
delete_site_option('wc_settings_tab_thekua_o_banner_url');
delete_option('wc_settings_tab_thekua_o_banner_width');
delete_site_option('wc_settings_tab_thekua_o_banner_width');

