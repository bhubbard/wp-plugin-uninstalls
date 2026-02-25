<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp2p_tab');
delete_site_option('wp2p_tab');
delete_option('wp2p_settings');
delete_site_option('wp2p_settings');
delete_option('wp2p_tab_saved');
delete_site_option('wp2p_tab_saved');
delete_option('wp2p_settings_saved');
delete_site_option('wp2p_settings_saved');
delete_option('wp2p_published');
delete_site_option('wp2p_published');
delete_option('wp2p_pref');
delete_site_option('wp2p_pref');

