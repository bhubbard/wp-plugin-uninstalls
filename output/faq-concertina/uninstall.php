<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('faqconc_animation_speed');
delete_site_option('faqconc_animation_speed');
delete_option('faqconc_hide_others');
delete_site_option('faqconc_hide_others');
delete_option('faqconc_width');
delete_site_option('faqconc_width');
delete_option('faqconc_width_override');
delete_site_option('faqconc_width_override');
delete_option('faqconc_colour_scheme');
delete_site_option('faqconc_colour_scheme');
delete_option('faqconc_custom_colour1');
delete_site_option('faqconc_custom_colour1');
delete_option('faqconc_custom_colour2');
delete_site_option('faqconc_custom_colour2');
delete_option('faqconc_negative');
delete_site_option('faqconc_negative');
delete_option('faqconc_corners');
delete_site_option('faqconc_corners');
delete_option('faqconc_indicators');
delete_site_option('faqconc_indicators');
delete_option('faqconc_disable_styles');
delete_site_option('faqconc_disable_styles');
delete_option('faqconc_order');
delete_site_option('faqconc_order');
delete_option('faqconc_reverse');
delete_site_option('faqconc_reverse');
delete_option(' faqconc_order');
delete_site_option(' faqconc_order');

