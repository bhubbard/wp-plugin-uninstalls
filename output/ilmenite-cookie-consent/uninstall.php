<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ilcc_policy_url');
delete_site_option('ilcc_policy_url');
delete_option('ilcc_title');
delete_site_option('ilcc_title');
delete_option('ilcc_text');
delete_site_option('ilcc_text');
delete_option('ilcc_button');
delete_site_option('ilcc_button');
delete_option('ilcc_only_necessary_text');
delete_site_option('ilcc_only_necessary_text');
delete_option('ilcc_configure_settings_text');
delete_site_option('ilcc_configure_settings_text');
delete_option('ilcc_style');
delete_site_option('ilcc_style');
delete_option('ilcc_settings_necessary_heading');
delete_site_option('ilcc_settings_necessary_heading');
delete_option('ilcc_settings_necessary_description');
delete_site_option('ilcc_settings_necessary_description');
delete_option('ilcc_settings_marketing_heading');
delete_site_option('ilcc_settings_marketing_heading');
delete_option('ilcc_settings_marketing_description');
delete_site_option('ilcc_settings_marketing_description');
delete_option('ilcc_settings_analytics_heading');
delete_site_option('ilcc_settings_analytics_heading');
delete_option('ilcc_settings_analytics_description');
delete_site_option('ilcc_settings_analytics_description');
delete_option('ilcc_save_settings_text');
delete_site_option('ilcc_save_settings_text');
delete_option('ilcc_settings_title');
delete_site_option('ilcc_settings_title');
delete_option('ilcc_settings_description');
delete_site_option('ilcc_settings_description');
delete_option('ilcc_settings_analytics_is_shown');
delete_site_option('ilcc_settings_analytics_is_shown');
delete_option('ilcc_settings_marketing_is_shown');
delete_site_option('ilcc_settings_marketing_is_shown');
delete_option('ilcc_domains_necessary');
delete_site_option('ilcc_domains_necessary');
delete_option('ilcc_domains_analytics');
delete_site_option('ilcc_domains_analytics');
delete_option('ilcc_domains_marketing');
delete_site_option('ilcc_domains_marketing');

