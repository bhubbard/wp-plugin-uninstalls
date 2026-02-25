<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wl_tos_tos_heading');
delete_site_option('wl_tos_tos_heading');
delete_option('wl_tos_pp_heading');
delete_site_option('wl_tos_pp_heading');
delete_option('wl_tos_name');
delete_site_option('wl_tos_name');
delete_option('wl_tos_full_name');
delete_site_option('wl_tos_full_name');
delete_option('wl_tos_possessive_name');
delete_site_option('wl_tos_possessive_name');
delete_option('wl_tos_domain_name');
delete_site_option('wl_tos_domain_name');
delete_option('wl_tos_official_site');
delete_site_option('wl_tos_official_site');
delete_option('wl_tos_min_age');
delete_site_option('wl_tos_min_age');
delete_option('wl_tos_time_period_change');
delete_site_option('wl_tos_time_period_change');
delete_option('wl_tos_time_period_reply');
delete_site_option('wl_tos_time_period_reply');
delete_option('wl_tos_time_period_damage');
delete_site_option('wl_tos_time_period_damage');
delete_option('wl_tos_time_dcma_url');
delete_site_option('wl_tos_time_dcma_url');
delete_option('wl_tos_venue');
delete_site_option('wl_tos_venue');
delete_option('wl_tos_court');
delete_site_option('wl_tos_court');
delete_option('wl_tos_arbit');
delete_site_option('wl_tos_arbit');
delete_option('widget_api_endpoint');
delete_site_option('widget_api_endpoint');

