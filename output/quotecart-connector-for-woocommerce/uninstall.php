<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quotecart_mu_file_version');
delete_site_option('quotecart_mu_file_version');
delete_option('quotecart_use_wp_auth');
delete_site_option('quotecart_use_wp_auth');
delete_option('quotecart_wp_auth_secret');
delete_site_option('quotecart_wp_auth_secret');
delete_option('quotecart_auto_display_quotes_in_woo_account');
delete_site_option('quotecart_auto_display_quotes_in_woo_account');
delete_option('quotecart_disable_shortcode_css');
delete_site_option('quotecart_disable_shortcode_css');
delete_option('quotecart_display_add_to_quote_after_add_to_cart');
delete_site_option('quotecart_display_add_to_quote_after_add_to_cart');
delete_option('quotecart_quotes_page_id');
delete_site_option('quotecart_quotes_page_id');

// Delete Transients
delete_transient('quotecart_login_error');
delete_site_transient('quotecart_login_error');
delete_transient('quotecart_login_success');
delete_site_transient('quotecart_login_success');
delete_transient('quotecart_register_error');
delete_site_transient('quotecart_register_error');
delete_transient('quotecart_register_show_login_link');
delete_site_transient('quotecart_register_show_login_link');
delete_transient('quotecart_register_success');
delete_site_transient('quotecart_register_success');
delete_transient('quotecart_logout_success');
delete_site_transient('quotecart_logout_success');
delete_transient('quotecart_quote_error');
delete_site_transient('quotecart_quote_error');
delete_transient('quotecart_quote_deleted');
delete_site_transient('quotecart_quote_deleted');
delete_transient('quotecart_quote_created');
delete_site_transient('quotecart_quote_created');
delete_transient('quotecart_add_to_quote_error');
delete_site_transient('quotecart_add_to_quote_error');
delete_transient('quotecart_add_to_quote_success');
delete_site_transient('quotecart_add_to_quote_success');
delete_transient('quotecart_quote_updated');
delete_site_transient('quotecart_quote_updated');
delete_transient('quotecart_status_error');
delete_site_transient('quotecart_status_error');
delete_transient('quotecart_status_updated');
delete_site_transient('quotecart_status_updated');
delete_transient('_quotecart_welcome_screen_activation_redirect');
delete_site_transient('_quotecart_welcome_screen_activation_redirect');

