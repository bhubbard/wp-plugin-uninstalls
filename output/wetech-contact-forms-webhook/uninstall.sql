-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_webhook_token', 'gravity_webhook_token', 'gravity_mapping_array');

