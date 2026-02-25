<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_mint_compliance');
delete_site_option('_mint_compliance');
delete_option('_mint_integration_settings');
delete_site_option('_mint_integration_settings');
delete_option('mint_contact_primary_fields');
delete_site_option('mint_contact_primary_fields');
delete_option('_mint_recaptcha_settings');
delete_site_option('_mint_recaptcha_settings');
delete_option('_mrm_general_preference');
delete_site_option('_mrm_general_preference');
delete_option('mint_notice_update');
delete_site_option('mint_notice_update');
delete_option('mrm_contact_columns');
delete_site_option('mrm_contact_columns');
delete_option('_mrm_email_settings');
delete_site_option('_mrm_email_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_mrm_general_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('_mrm_general_footer_watermark');
delete_site_option('_mrm_general_footer_watermark');
delete_option('_mrm_optin_settings');
delete_site_option('_mrm_optin_settings');
delete_option('_mrm_woocommerce_settings');
delete_site_option('_mrm_woocommerce_settings');
delete_option('mint_bounce_key');
delete_site_option('mint_bounce_key');
delete_option('mail_mint_hide_wc_database_update_notice');
delete_site_option('mail_mint_hide_wc_database_update_notice');
delete_option('mail_mint_hide_template_table_update_notice');
delete_site_option('mail_mint_hide_template_table_update_notice');
delete_option('mrm_email_service_settings');
delete_site_option('mrm_email_service_settings');
delete_option('mail_mint_db_version');
delete_site_option('mail_mint_db_version');
delete_option('mail_mint_db_1140_version_updated');
delete_site_option('mail_mint_db_1140_version_updated');
delete_option('mail_mint_db_1152_version_updated');
delete_site_option('mail_mint_db_1152_version_updated');
delete_option('mail_mint_version');
delete_site_option('mail_mint_version');
delete_option('_mrm_business_basic_info_setting');
delete_site_option('_mrm_business_basic_info_setting');
delete_option('mint_post_image_size');
delete_site_option('mint_post_image_size');
delete_option('mail_mint_capabilities_assigned_to_admin');
delete_site_option('mail_mint_capabilities_assigned_to_admin');
delete_option('_mrm_business_social_info_setting');
delete_site_option('_mrm_business_social_info_setting');
delete_option('mail_mint_hide_database_update_notice');
delete_site_option('mail_mint_hide_database_update_notice');
delete_option('_is_show_blackfriday_banner');
delete_site_option('_is_show_blackfriday_banner');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');
delete_option('_mailmint_form_dismissed');
delete_site_option('_mailmint_form_dismissed');
delete_option('_mrm_general_user_signup');
delete_site_option('_mrm_general_user_signup');
delete_option('_mrm_general_comment_form_subscription');
delete_site_option('_mrm_general_comment_form_subscription');
delete_option('_mrm_general_unsubscriber_settings');
delete_site_option('_mrm_general_unsubscriber_settings');
delete_option('mail-mint_allow_tracking');
delete_site_option('mail-mint_allow_tracking');
delete_option('mailmint_contacts_added');
delete_site_option('mailmint_contacts_added');
delete_option('mailmint_install_timestamp');
delete_site_option('mailmint_install_timestamp');
delete_option('mailmint_automation_used');
delete_site_option('mailmint_automation_used');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('_mint_advanced_settings');
delete_site_option('_mint_advanced_settings');
delete_option('_mrm_general_plugin_data_delete');
delete_site_option('_mrm_general_plugin_data_delete');
delete_option('current_db_version');
delete_site_option('current_db_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('test-telemetry-plugin_allow_tracking');
delete_site_option('test-telemetry-plugin_allow_tracking');

// Delete Transients
delete_transient('wpfnl_community_banner_permanently_hidden');
delete_site_transient('wpfnl_community_banner_permanently_hidden');
delete_transient('wpfnl_community_banner_temporarily_hidden');
delete_site_transient('wpfnl_community_banner_temporarily_hidden');
delete_transient('mint_hide_checklist');
delete_site_transient('mint_hide_checklist');
delete_transient('mailmint_show_setup_wizard');
delete_site_transient('mailmint_show_setup_wizard');
delete_transient('mailmint_installing');
delete_site_transient('mailmint_installing');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('coderex_telemetry_weekly_report');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mailmint_email_template_html_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mailmint_email_template_html_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mailmint_email_template_html_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mailmint_email_template_html_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mailmint_email_template_json_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mailmint_email_template_json_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mailmint_email_template_json_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mailmint_email_template_json_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mailmint_email_template_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mailmint_email_template_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mailmint_email_template_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mailmint_email_template_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpfnl_funnel_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpfnl_funnel_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpfnl_funnel_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpfnl_funnel_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mint_subscribe_permission' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mint_subscribe_permission' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mint_subscribe_permission' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mint_subscribe_permission' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

