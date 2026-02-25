-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('asnp_easy_product_upsell_settings', 'asnp_weuc_db_version', 'asnp_weuc_installing');
DELETE FROM wp_options WHERE option_name LIKE '%_added';

