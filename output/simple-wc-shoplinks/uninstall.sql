-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('guru_woo_lac_options', 'simple_wc_shoplinks_options');

