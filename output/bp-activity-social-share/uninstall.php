<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bpas_icon_color_settings');
delete_site_option('bpas_icon_color_settings');
delete_option('bp_share_services_extra');
delete_site_option('bp_share_services_extra');
delete_option('bp_share_all_services_disable');
delete_site_option('bp_share_all_services_disable');
delete_option('bp_share_services');
delete_site_option('bp_share_services');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('bp_share_flag');
delete_site_option('bp_share_flag');

// Delete Transients
delete_transient('_bpshare_is_new_install');
delete_site_transient('_bpshare_is_new_install');

