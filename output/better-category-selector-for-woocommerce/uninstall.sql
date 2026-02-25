-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_product_cat', 'HD_BCS_db_version', 'hd_bcs_options');

