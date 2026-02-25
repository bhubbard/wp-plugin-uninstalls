<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsm_rcs_plugin_options_dashboard');
delete_site_option('wpsm_rcs_plugin_options_dashboard');
delete_option('wpsm_rcs_plugin_options_templates');
delete_site_option('wpsm_rcs_plugin_options_templates');
delete_option('wpsm_rcs_plugin_options_general');
delete_site_option('wpsm_rcs_plugin_options_general');
delete_option('wpsm_rcs_plugin_options_header');
delete_site_option('wpsm_rcs_plugin_options_header');
delete_option('wpsm_rcs_plugin_options_countdown');
delete_site_option('wpsm_rcs_plugin_options_countdown');
delete_option('wpsm_rcs_plugin_options_background');
delete_site_option('wpsm_rcs_plugin_options_background');
delete_option('wpsm_rcs_plugin_options_text_and_color');
delete_site_option('wpsm_rcs_plugin_options_text_and_color');
delete_option('wpsm_rcs_plugin_options_custom_css');
delete_site_option('wpsm_rcs_plugin_options_custom_css');
delete_option('wpsm_rcs_plugin_options_social');
delete_site_option('wpsm_rcs_plugin_options_social');
delete_option('wpsm_rcs_plugin_options_about_us');
delete_site_option('wpsm_rcs_plugin_options_about_us');
delete_option('wpsm_rcs_plugin_options_contact_us');
delete_site_option('wpsm_rcs_plugin_options_contact_us');
delete_option('wpsm_rcs_plugin_options_newsletter');
delete_site_option('wpsm_rcs_plugin_options_newsletter');
delete_option('wpsm_rcs_plugin_options_subscription_field');
delete_site_option('wpsm_rcs_plugin_options_subscription_field');
delete_option('wpsm_rcs_review');
delete_site_option('wpsm_rcs_review');

