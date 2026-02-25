-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zenfpd_dbuser', 'zenfpd_dbpwd', 'zenfpd_dbname', 'zenfpd_dbhost', 'zenfpd_prefix', 'zenfpd_image_width', 'zenfpd_image_height', 'zenfpd_store_url', 'zenfpd_prod_img_folder', 'zenfpd_new_product_days');

