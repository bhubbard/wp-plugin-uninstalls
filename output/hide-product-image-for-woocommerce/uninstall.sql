-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hide_prod_img_wc_db_version', 'hpifwc_hide_all_prod_img');

