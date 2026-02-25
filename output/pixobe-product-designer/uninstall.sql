-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pixobe_product_designer_nonce', 'pixobe_product_designer_site_id', 'pixobe_product_designer_plan', 'pixobe_product_designer_message', 'pixobe_product_designer_expiry');

