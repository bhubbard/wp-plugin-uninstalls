<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oowcode_admin_theme');
delete_site_option('oowcode_admin_theme');
delete_option('oow_pjax_script_priority');
delete_site_option('oow_pjax_script_priority');
delete_option('oow_pjax_enabled');
delete_site_option('oow_pjax_enabled');
delete_option('oow_pjax_targets');
delete_site_option('oow_pjax_targets');
delete_option('oow_pjax_exclude_selectors');
delete_site_option('oow_pjax_exclude_selectors');
delete_option('oow_pjax_exclude_zone_selectors');
delete_site_option('oow_pjax_exclude_zone_selectors');
delete_option('oow_pjax_exclude_external');
delete_site_option('oow_pjax_exclude_external');
delete_option('oow_pjax_exclude_target_blank');
delete_site_option('oow_pjax_exclude_target_blank');
delete_option('oow_pjax_enable_cache');
delete_site_option('oow_pjax_enable_cache');
delete_option('oow_pjax_cache_lifetime');
delete_site_option('oow_pjax_cache_lifetime');
delete_option('oow_pjax_debug_mode');
delete_site_option('oow_pjax_debug_mode');
delete_option('oow_pjax_enable_loader');
delete_site_option('oow_pjax_enable_loader');
delete_option('oow_pjax_min_loader_duration');
delete_site_option('oow_pjax_min_loader_duration');
delete_option('oow_pjax_enable_forms');
delete_site_option('oow_pjax_enable_forms');
delete_option('oow_pjax_custom_js_before');
delete_site_option('oow_pjax_custom_js_before');
delete_option('oow_pjax_custom_js_after');
delete_site_option('oow_pjax_custom_js_after');
delete_option('oow_pjax_form_refresh_targets');
delete_site_option('oow_pjax_form_refresh_targets');
delete_option('oow_pjax_loader_css');
delete_site_option('oow_pjax_loader_css');

