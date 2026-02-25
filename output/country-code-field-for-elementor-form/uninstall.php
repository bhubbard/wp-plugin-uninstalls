<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-install-by' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fme-installDate');
delete_site_option('fme-installDate');
delete_option('cfef-installDate');
delete_site_option('cfef-installDate');
delete_option('cfefp-installDate');
delete_site_option('cfefp-installDate');
delete_option('ccfef-installDate');
delete_site_option('ccfef-installDate');
delete_option('oldest_plugin');
delete_site_option('oldest_plugin');
delete_option('country-code-install-by');
delete_site_option('country-code-install-by');
delete_option('cfkef_enabled_elements');
delete_site_option('cfkef_enabled_elements');
delete_option('cfkef_toggle_all');
delete_site_option('cfkef_toggle_all');
delete_option('country_code');
delete_site_option('country_code');
delete_option('conditional_logic');
delete_site_option('conditional_logic');
delete_option('form_input_mask');
delete_site_option('form_input_mask');
delete_option('input_mask');
delete_site_option('input_mask');
delete_option('cfkef_enable_elementor_pro_form');
delete_site_option('cfkef_enable_elementor_pro_form');
delete_option('ccfef_plugin_initialized');
delete_site_option('ccfef_plugin_initialized');
delete_option('ccfef_migrate_done');
delete_site_option('ccfef_migrate_done');
delete_option('fme_plugin_initialized');
delete_site_option('fme_plugin_initialized');
delete_option('fme_migrate_done');
delete_site_option('fme_migrate_done');
delete_option('mfe_plugin_initialized');
delete_site_option('mfe_plugin_initialized');
delete_option('mfe_migrate_done');
delete_site_option('mfe_migrate_done');
delete_option('country_code_initial_version');
delete_site_option('country_code_initial_version');
delete_option('ccfef-install-date');
delete_site_option('ccfef-install-date');
delete_option('cfef_usage_share_data');
delete_site_option('cfef_usage_share_data');
delete_option('ccfef-v');
delete_site_option('ccfef-v');
delete_option('cfef_formdb_marketing_dismissed
');
delete_site_option('cfef_formdb_marketing_dismissed
');
delete_option('ccfef_marketing_dismissed');
delete_site_option('ccfef_marketing_dismissed');
delete_option('ccfef_tec_notice_dismissed');
delete_site_option('ccfef_tec_notice_dismissed');
delete_option('cfef_formdb_marketing_dismissed');
delete_site_option('cfef_formdb_marketing_dismissed');
delete_option('cpfm_opt_in_choice_cool_forms');
delete_site_option('cpfm_opt_in_choice_cool_forms');
delete_option('cfkef_geo_provider');
delete_site_option('cfkef_geo_provider');
delete_option('cfkef_country_code_api_key');
delete_site_option('cfkef_country_code_api_key');
delete_option('cfkef_country_code_non_ipapi_api_key');
delete_site_option('cfkef_country_code_non_ipapi_api_key');
delete_option('cfefp_redirect_conditionally');
delete_site_option('cfefp_redirect_conditionally');
delete_option('cfefp_email_conditionally');
delete_site_option('cfefp_email_conditionally');
delete_option('cfefp_cdn_image');
delete_site_option('cfefp_cdn_image');
delete_option('cfefp_cloudflare_site_key');
delete_site_option('cfefp_cloudflare_site_key');
delete_option('cfefp_cloudflare_secret_key');
delete_site_option('cfefp_cloudflare_secret_key');
delete_option('cfefp_h_site_key');
delete_site_option('cfefp_h_site_key');
delete_option('cfefp_h_secret_key');
delete_site_option('cfefp_h_secret_key');
delete_option('ccfef-type');
delete_site_option('ccfef-type');
delete_option('ccfef_review_notice_dismiss');
delete_site_option('ccfef_review_notice_dismiss');

// Clear Cron Jobs
wp_clear_scheduled_hook('ccfef_extra_data_update');
wp_clear_scheduled_hook('cfef_extra_data_update');
wp_clear_scheduled_hook('cfefp_extra_data_update');
wp_clear_scheduled_hook('fme_extra_data_update');
wp_clear_scheduled_hook('mfe_extra_data_update');

