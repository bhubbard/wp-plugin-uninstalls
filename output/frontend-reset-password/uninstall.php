<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('divi_engine_options');
delete_site_option('divi_engine_options');
delete_option('divi_fb_license');
delete_site_option('divi_fb_license');
delete_option('wp_enhanced_licenses');
delete_site_option('wp_enhanced_licenses');
delete_option('wpe_incomplete_achievements');
delete_site_option('wpe_incomplete_achievements');
delete_option('wpe_complete_achievements');
delete_site_option('wpe_complete_achievements');
delete_option('somfrp_gen_settings');
delete_site_option('somfrp_gen_settings');
delete_option('somfrp_security_settings');
delete_site_option('somfrp_security_settings');
delete_option('somfrp_design_settings');
delete_site_option('somfrp_design_settings');

