<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yith_wcaf_payment_commission_age');
delete_site_option('yith_wcaf_payment_commission_age');
delete_option('yith_wcaf_payment_pay_only_old_commissions');
delete_site_option('yith_wcaf_payment_pay_only_old_commissions');
delete_option('yith_wcaf_payment_type');
delete_site_option('yith_wcaf_payment_type');
delete_option('yith_wcaf_payment_date');
delete_site_option('yith_wcaf_payment_date');
delete_option('yith_wcaf_payment_threshold');
delete_site_option('yith_wcaf_payment_threshold');
delete_option('yith_wcaf_enable_ban_hidden_sections');
delete_site_option('yith_wcaf_enable_ban_hidden_sections');
delete_option('yith_wcaf_ban_hidden_sections');
delete_site_option('yith_wcaf_ban_hidden_sections');
delete_option('yith_wcaf_dashboard_location');
delete_site_option('yith_wcaf_dashboard_location');
delete_option('yith_wcaf_enable_global_ban_message');
delete_site_option('yith_wcaf_enable_global_ban_message');
delete_option('yith_wcaf_ban_global_message');
delete_site_option('yith_wcaf_ban_global_message');
delete_option('yith_wcaf_enable_global_reject_message');
delete_site_option('yith_wcaf_enable_global_reject_message');
delete_option('yith_wcaf_ban_reject_global_message');
delete_site_option('yith_wcaf_ban_reject_global_message');
delete_option('yith_wcaf_referral_registration_auto_enable');
delete_site_option('yith_wcaf_referral_registration_auto_enable');
delete_option('yith_wcaf_referral_registration_use_wc_form');
delete_site_option('yith_wcaf_referral_registration_use_wc_form');
delete_option('yith_wcaf_affiliate_profile_fields');
delete_site_option('yith_wcaf_affiliate_profile_fields');
delete_option('yith_wcaf_commission_avoid_auto_referral');
delete_site_option('yith_wcaf_commission_avoid_auto_referral');
delete_option('yith_wcaf_click_enabled');
delete_site_option('yith_wcaf_click_enabled');
delete_option('yith_wcaf_click_resolution');
delete_site_option('yith_wcaf_click_resolution');
delete_option('_yith_wcaf_flush_rewrite_rules');
delete_site_option('_yith_wcaf_flush_rewrite_rules');
delete_option('yith_wcaf_db_version');
delete_site_option('yith_wcaf_db_version');
delete_option('yith_wcaf_version');
delete_site_option('yith_wcaf_version');
delete_option('yith_wcaf_add_role_to_affiliates');
delete_site_option('yith_wcaf_add_role_to_affiliates');
delete_option('yith_wcaf_referral_registration_process_dangling_commissions');
delete_site_option('yith_wcaf_referral_registration_process_dangling_commissions');
delete_option('yith_wcaf_referral_registration_process_orphan_commissions');
delete_site_option('yith_wcaf_referral_registration_process_orphan_commissions');
delete_option('yith_wcaf_share_fb');
delete_site_option('yith_wcaf_share_fb');
delete_option('yith_wcaf_share_twitter');
delete_site_option('yith_wcaf_share_twitter');
delete_option('yith_wcaf_share_pinterest');
delete_site_option('yith_wcaf_share_pinterest');
delete_option('yith_wcaf_share_email');
delete_site_option('yith_wcaf_share_email');
delete_option('yith_wcaf_share_whatsapp');
delete_site_option('yith_wcaf_share_whatsapp');
delete_option('yith_wcaf_share');
delete_site_option('yith_wcaf_share');
delete_option('yith_wcaf_share_socials');
delete_site_option('yith_wcaf_share_socials');
delete_option('yith_wcaf_referral_registration_form_options');
delete_site_option('yith_wcaf_referral_registration_form_options');
delete_option('yith_wcaf_referral_show_fields_on_settings');
delete_site_option('yith_wcaf_referral_show_fields_on_settings');
delete_option('yith_wcaf_referral_show_fields_on_become_an_affiliate');
delete_site_option('yith_wcaf_referral_show_fields_on_become_an_affiliate');
delete_option('yith_wcaf_referral_registration_show_name_field');
delete_site_option('yith_wcaf_referral_registration_show_name_field');
delete_option('yith_wcaf_referral_registration_show_surname_field');
delete_site_option('yith_wcaf_referral_registration_show_surname_field');
delete_option('woocommerce_registration_generate_username');
delete_site_option('woocommerce_registration_generate_username');
delete_option('woocommerce_registration_generate_password');
delete_site_option('woocommerce_registration_generate_password');
delete_option('yith_wcaf_referral_registration_show_terms_field');
delete_site_option('yith_wcaf_referral_registration_show_terms_field');
delete_option('yith_wcaf_referral_registration_terms_label');
delete_site_option('yith_wcaf_referral_registration_terms_label');
delete_option('yith_wcaf_referral_registration_terms_anchor_url');
delete_site_option('yith_wcaf_referral_registration_terms_anchor_url');
delete_option('yith_wcaf_referral_registration_terms_anchor_text');
delete_site_option('yith_wcaf_referral_registration_terms_anchor_text');
delete_option('woocommerce_registration_privacy_policy_text');
delete_site_option('woocommerce_registration_privacy_policy_text');
delete_option('yith_wcaf_affiliate_profile_fields_defaults');
delete_site_option('yith_wcaf_affiliate_profile_fields_defaults');
delete_option('yith_wcaf_instance');
delete_site_option('yith_wcaf_instance');
delete_option('yith_wcaf_commission_exclude_tax');
delete_site_option('yith_wcaf_commission_exclude_tax');
delete_option('yith_wcaf_commission_exclude_discount');
delete_site_option('yith_wcaf_commission_exclude_discount');
delete_option('yith_wcaf_general_rate');
delete_site_option('yith_wcaf_general_rate');
delete_option('yith_wcaf_referral_make_cookie_expire');
delete_site_option('yith_wcaf_referral_make_cookie_expire');
delete_option('yith_wcaf_referral_cookie_expire');
delete_site_option('yith_wcaf_referral_cookie_expire');
delete_option('yith_wcaf_referral_var_name');
delete_site_option('yith_wcaf_referral_var_name');
delete_option('yith_wcaf_referral_cookie_name');
delete_site_option('yith_wcaf_referral_cookie_name');
delete_option('yith_wcaf_referral_cookie_ajax_set');
delete_site_option('yith_wcaf_referral_cookie_ajax_set');
delete_option('yith_wcaf_dashboard_page_id');
delete_site_option('yith_wcaf_dashboard_page_id');
delete_option('yith_wcaf_socials_title');
delete_site_option('yith_wcaf_socials_title');
delete_option('yith_wcaf_socials_text');
delete_site_option('yith_wcaf_socials_text');
delete_option('yith_wcaf_socials_image_url');
delete_site_option('yith_wcaf_socials_image_url');
delete_option('yith_wcaf_referral_registration_show_login_form');
delete_site_option('yith_wcaf_referral_registration_show_login_form');
delete_option('yith_wcaf_payment_require_invoice');
delete_site_option('yith_wcaf_payment_require_invoice');
delete_option('yit_font_awesome_list');
delete_site_option('yit_font_awesome_list');
delete_option('yit_dashicons_list');
delete_site_option('yit_dashicons_list');
delete_option('yit_plugin_fw_panel_wc_default_options_set');
delete_site_option('yit_plugin_fw_panel_wc_default_options_set');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_width' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_height' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('yit_recently_activated');
delete_site_option('yit_recently_activated');
delete_option('yith_system_info');
delete_site_option('yith_system_info');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-yith-attachment-id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('yith-plugin-fw-latest-hc-articles');
delete_site_transient('yith-plugin-fw-latest-hc-articles');
delete_transient('yith-plugin-fw-system-status-tls-version');
delete_site_transient('yith-plugin-fw-system-status-tls-version');
delete_transient('yith-plugin-fw-system-status-output-ip');
delete_site_transient('yith-plugin-fw-system-status-output-ip');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'blog-cats' ) );

