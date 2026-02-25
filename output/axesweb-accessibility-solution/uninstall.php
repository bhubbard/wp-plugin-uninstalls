<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('axesweb_activated');
delete_site_option('axesweb_activated');
delete_option('axesweb_verify_issued_at');
delete_site_option('axesweb_verify_issued_at');
delete_option('axesweb_verify_ttl');
delete_site_option('axesweb_verify_ttl');
delete_option('axesweb_key_last4');
delete_site_option('axesweb_key_last4');
delete_option('axesweb_api_key_enc');
delete_site_option('axesweb_api_key_enc');
delete_option('axesweb_a11y_api_key');
delete_site_option('axesweb_a11y_api_key');
delete_option('axesweb_a11y_account_first_name');
delete_site_option('axesweb_a11y_account_first_name');
delete_option('axesweb_a11y_account_last_name');
delete_site_option('axesweb_a11y_account_last_name');
delete_option('axesweb_a11y_declaration_page_id');
delete_site_option('axesweb_a11y_declaration_page_id');
delete_option('axesweb_a11y_feedback_enabled');
delete_site_option('axesweb_a11y_feedback_enabled');
delete_option('axesweb_a11y_feedback_email');
delete_site_option('axesweb_a11y_feedback_email');
delete_option('axesweb_a11y_widget_position');
delete_site_option('axesweb_a11y_widget_position');
delete_option('axesweb_a11y_widget_theme');
delete_site_option('axesweb_a11y_widget_theme');
delete_option('axesweb_a11y_declaration_url');
delete_site_option('axesweb_a11y_declaration_url');

