-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tokenaccess_placeholder_html', 'tokenaccess_token_key', 'tokenaccess_expiry_hours', 'tokenaccess_add_token', 'tokenaccess_remove_token', 'add_token', 'remove_token', 'expire_hours');

