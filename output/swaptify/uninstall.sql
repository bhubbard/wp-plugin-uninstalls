-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swaptify_property_key', 'swaptify_account_token', 'swaptify_enabled', 'swaptify_version');

