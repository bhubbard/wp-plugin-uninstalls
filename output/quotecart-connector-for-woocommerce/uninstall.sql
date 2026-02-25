-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quotecart_mu_file_version', 'quotecart_use_wp_auth', 'quotecart_wp_auth_secret', 'quotecart_auto_display_quotes_in_woo_account', 'quotecart_disable_shortcode_css', 'quotecart_display_add_to_quote_after_add_to_cart', 'quotecart_quotes_page_id', 'quotecart_login_error', 'quotecart_login_success', 'quotecart_register_error', 'quotecart_register_show_login_link', 'quotecart_register_success', 'quotecart_logout_success', 'quotecart_quote_error', 'quotecart_quote_deleted', 'quotecart_quote_created', 'quotecart_add_to_quote_error', 'quotecart_add_to_quote_success', 'quotecart_quote_updated', 'quotecart_status_error', 'quotecart_status_updated', '_quotecart_welcome_screen_activation_redirect');

