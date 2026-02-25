-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('product_share_option', 'product_share_option_advanced', 'product_share_license');

