-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_private_settings', 'wp_private_replacement_type', 'wp_private_before_html', 'wp_private_after_html', 'wp_private_not_authorized_text', 'wp_private_selected_users', 'wp_private_custom_login_page_url', 'wp_private_linkback_enable');

