<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hmw_options');
delete_site_option('hmw_options');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_queue_flush_rewrite_rules');
delete_site_option('woocommerce_queue_flush_rewrite_rules');
delete_option('comet_cache_options');
delete_site_option('comet_cache_options');
delete_option('wphb_settings');
delete_site_option('wphb_settings');
delete_option('cdn_enabler');
delete_site_option('cdn_enabler');
delete_option('ossdl_off_cdn_url');
delete_site_option('ossdl_off_cdn_url');
delete_option('ossdl_off_include_dirs');
delete_site_option('ossdl_off_include_dirs');
delete_option('ewww_image_optimizer_exactdn_domain');
delete_site_option('ewww_image_optimizer_exactdn_domain');
delete_option('jch_options');
delete_site_option('jch_options');
delete_option('hyper-cache');
delete_site_option('hyper-cache');
delete_option('bunnycdn');
delete_site_option('bunnycdn');
delete_option('wp-smush-cdn_status');
delete_site_option('wp-smush-cdn_status');
delete_option('breeze_file_settings');
delete_site_option('breeze_file_settings');
delete_option('litespeed.conf.cache-exc');
delete_site_option('litespeed.conf.cache-exc');
delete_option('mepr_options');
delete_site_option('mepr_options');
delete_option('whl_page');
delete_site_option('whl_page');
delete_option('pp_settings_data');
delete_site_option('pp_settings_data');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('rlrsssl_options');
delete_site_option('rlrsssl_options');
delete_option('siteground_optimizer_combine_css');
delete_site_option('siteground_optimizer_combine_css');
delete_option('siteground_optimizer_combine_javascript');
delete_site_option('siteground_optimizer_combine_javascript');
delete_option('um_options');
delete_site_option('um_options');
delete_option('wpum_settings');
delete_site_option('wpum_settings');
delete_option('itsec-storage');
delete_site_option('itsec-storage');
delete_option('woocommerce_enable_myaccount_registration');
delete_site_option('woocommerce_enable_myaccount_registration');

// Delete Transients
delete_transient('hmwp_disable');
delete_site_transient('hmwp_disable');
delete_transient('hmwp_activate');
delete_site_transient('hmwp_activate');
delete_transient('hmwp_restore');
delete_site_transient('hmwp_restore');
delete_transient('hmwp_local_ip');
delete_site_transient('hmwp_local_ip');
delete_transient('hmwp_update');
delete_site_transient('hmwp_update');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('hmwp_lispeed_ips');
delete_site_transient('hmwp_lispeed_ips');
delete_transient('hmwp_disable_hide_urls');
delete_site_transient('hmwp_disable_hide_urls');

