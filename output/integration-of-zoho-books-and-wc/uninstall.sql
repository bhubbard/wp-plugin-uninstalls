-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bit_wc_zoho_books_integrate_key_data', 'bit_wcb_form_secret_api_key', 'bit_wc_zoho_books_installed', 'bit_wc_zoho_books_version', 'bit_wc_zoho_books_activation_redirect', 'bit_wc_zoho_books_prevent_tracker_notice');

