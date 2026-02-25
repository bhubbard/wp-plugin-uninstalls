<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ngp_lang');
delete_site_option('ngp_lang');
delete_option('ngp_const');
delete_site_option('ngp_const');
delete_option('ngp_rules');
delete_site_option('ngp_rules');
delete_option('ngp_multicity_rules');
delete_site_option('ngp_multicity_rules');
delete_option('ngp_multicity_id');
delete_site_option('ngp_multicity_id');
delete_option('ngp_multicity_class');
delete_site_option('ngp_multicity_class');
delete_option('ngp_theme');
delete_site_option('ngp_theme');
delete_option('ngp_animation');
delete_site_option('ngp_animation');
delete_option('ngp_duration');
delete_site_option('ngp_duration');
delete_option('ngp_custom_styles');
delete_site_option('ngp_custom_styles');

