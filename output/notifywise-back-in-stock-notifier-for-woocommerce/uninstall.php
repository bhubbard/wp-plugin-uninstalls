<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('notifywise_recaptcha_credentials');
delete_site_option('notifywise_recaptcha_credentials');
delete_option('notifywise_brevo');
delete_site_option('notifywise_brevo');
delete_option('notifywise_external_integration');
delete_site_option('notifywise_external_integration');
delete_option('notifywise_mail_custom_content');
delete_site_option('notifywise_mail_custom_content');
delete_option('notifywise_mailer_type');
delete_site_option('notifywise_mailer_type');
delete_option('notifywise_smtp');
delete_site_option('notifywise_smtp');
delete_option('notifywise_sendgrid');
delete_site_option('notifywise_sendgrid');
delete_option('notifywise_button_normal_design');
delete_site_option('notifywise_button_normal_design');
delete_option('notifywise_button_hover_design');
delete_site_option('notifywise_button_hover_design');
delete_option('notifywise_brevo_list_ids');
delete_site_option('notifywise_brevo_list_ids');
delete_option('notifywise_brevo_status');
delete_site_option('notifywise_brevo_status');
delete_option('notifywise_gdpr_content');
delete_site_option('notifywise_gdpr_content');
delete_option('notifywise_custom_fields_table_inserted_default');
delete_site_option('notifywise_custom_fields_table_inserted_default');
delete_option('notifywise_brevo_response');
delete_site_option('notifywise_brevo_response');
delete_option('notifywise_existing_user');
delete_site_option('notifywise_existing_user');
delete_option('notifywise_sendgrid_status');
delete_site_option('notifywise_sendgrid_status');
delete_option('notifywise_updated_stock_product_id');
delete_site_option('notifywise_updated_stock_product_id');
delete_option('notifywise_form_general_settings');
delete_site_option('notifywise_form_general_settings');
delete_option('notifywise_form_content_settings');
delete_site_option('notifywise_form_content_settings');
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_state');
delete_site_option('woocommerce_store_state');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('notifywise_external_integration_status');
delete_site_option('notifywise_external_integration_status');
delete_option('notifywise_shortcode_list');
delete_site_option('notifywise_shortcode_list');
delete_option('notifywise_brevo_submitted_data');
delete_site_option('notifywise_brevo_submitted_data');
delete_option('notifywise_button_general_settings');
delete_site_option('notifywise_button_general_settings');

// Delete Transients
delete_transient('notifywise_doing_upgrade');
delete_site_transient('notifywise_doing_upgrade');

