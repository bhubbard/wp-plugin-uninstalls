<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CP_CFF_LOAD_SCRIPTS');
delete_site_option('CP_CFF_LOAD_SCRIPTS');
delete_option('CP_CALCULATEDFIELDSF_DEFAULT_template');
delete_site_option('CP_CALCULATEDFIELDSF_DEFAULT_template');
delete_option('CP_CALCULATEDFIELDSF_DEFAULT_display_submit_button');
delete_site_option('CP_CALCULATEDFIELDSF_DEFAULT_display_submit_button');
delete_option('CP_CALCULATEDFIELDSF_DEFAULT_cv_enable_captcha');
delete_site_option('CP_CALCULATEDFIELDSF_DEFAULT_cv_enable_captcha');
delete_option('CP_CALCULATEDFIELDSF_DIRECT_FORM_ACCESS');
delete_site_option('CP_CALCULATEDFIELDSF_DIRECT_FORM_ACCESS');
delete_option('CP_CALCULATEDFIELDSF_NONCE');
delete_site_option('CP_CALCULATEDFIELDSF_NONCE');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'installed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cff-t-f');
delete_site_option('cff-t-f');
delete_option('cff_ai_assistant_api_key');
delete_site_option('cff_ai_assistant_api_key');
delete_option('cff_ai_assistant_provider');
delete_site_option('cff_ai_assistant_provider');
delete_option('cff_ai_assistant_model');
delete_site_option('cff_ai_assistant_model');
delete_option('cff_ai_form_generator_provider');
delete_site_option('cff_ai_form_generator_provider');
delete_option('cff_ai_form_generator_model');
delete_site_option('cff_ai_form_generator_model');
delete_option('cff_ai_form_generator_api_key');
delete_site_option('cff_ai_form_generator_api_key');
delete_option('CP_CALCULATEDFIELDSF_DISABLE_REVISIONS');
delete_site_option('CP_CALCULATEDFIELDSF_DISABLE_REVISIONS');
delete_option('CP_CALCULATEDFIELDSF_REVISIONS_IN_PREVIEW');
delete_site_option('CP_CALCULATEDFIELDSF_REVISIONS_IN_PREVIEW');
delete_option('cff-t-t');
delete_site_option('cff-t-t');
delete_option('CP_CALCULATEDFIELDSF_FORMS_LIST_ORDERBY');
delete_site_option('CP_CALCULATEDFIELDSF_FORMS_LIST_ORDERBY');
delete_option('calculated-fields-form-category');
delete_site_option('calculated-fields-form-category');
delete_option('CP_CALCULATEDFIELDSF_USE_CACHE');
delete_site_option('CP_CALCULATEDFIELDSF_USE_CACHE');
delete_option('CP_CALCULATEDFIELDSF_OPTIMIZATION_PLUGIN');
delete_site_option('CP_CALCULATEDFIELDSF_OPTIMIZATION_PLUGIN');
delete_option('CP_CALCULATEDFIELDSF_ENCODING_EMAIL');
delete_site_option('CP_CALCULATEDFIELDSF_ENCODING_EMAIL');
delete_option('CP_CALCULATEDFIELDSF_EXCLUDE_CRAWLERS');
delete_site_option('CP_CALCULATEDFIELDSF_EXCLUDE_CRAWLERS');
delete_option('CP_CALCULATEDFIELDSF_AMP');
delete_site_option('CP_CALCULATEDFIELDSF_AMP');
delete_option('CP_CALCULATEDFIELDSF_RENDER_ONLY_VISIBLE');
delete_site_option('CP_CALCULATEDFIELDSF_RENDER_ONLY_VISIBLE');
delete_option('calculated-fields-search-form');
delete_site_option('calculated-fields-search-form');
delete_option('calculated-fields-form-records-per-page');
delete_site_option('calculated-fields-form-records-per-page');
delete_option('CP_CALCULATEDFIELDSF_DEFAULT_ENABLE_PAYPAL');
delete_site_option('CP_CALCULATEDFIELDSF_DEFAULT_ENABLE_PAYPAL');
delete_option('CP_CALCULATEDFIELDSF_VERSION');
delete_site_option('CP_CALCULATEDFIELDSF_VERSION');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_ROW_FORMAT' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cff-metaboxes-statuses');
delete_site_option('cff-metaboxes-statuses');
delete_option('cff-t-d');
delete_site_option('cff-t-d');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cff_ai_form_preview_%', '_site_transient_cff_ai_form_preview_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('cff-video-tutorial');
delete_site_transient('cff-video-tutorial');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_codepeople_promote_banner_%', '_site_transient_codepeople_promote_banner_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('cpcff_clean_transients');

