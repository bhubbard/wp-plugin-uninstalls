-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Activated_Plugin', 'wp3dtv_envato_purchase_code_validation');

