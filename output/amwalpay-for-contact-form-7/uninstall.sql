-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('amwalpay_cf7_options', 'amwalpay_cf7_theme_message', 'amwalpay_cf7_theme_error_message', 'amwalpay_cf7_smart_box_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_amwalpay_cf7_enable', '_amwalpay_cf7_email', '_amwalpay_cf7_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_amwalpay_cf7_enable', '_amwalpay_cf7_email', '_amwalpay_cf7_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_amwalpay_cf7_enable', '_amwalpay_cf7_email', '_amwalpay_cf7_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_amwalpay_cf7_enable', '_amwalpay_cf7_email', '_amwalpay_cf7_price');

