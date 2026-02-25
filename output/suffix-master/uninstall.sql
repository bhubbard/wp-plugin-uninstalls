-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('suffix-master', 'suffix_master_global', 'suffix_master_woocommerce', 'suffix_master_tools', 'suffix_master_version', 'suffix_master_install_time', 'woocommerce_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_suffix_master_title', '_suffix_master_content', '_suffix_master_product_title', '_suffix_master_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_suffix_master_title', '_suffix_master_content', '_suffix_master_product_title', '_suffix_master_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_suffix_master_title', '_suffix_master_content', '_suffix_master_product_title', '_suffix_master_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_suffix_master_title', '_suffix_master_content', '_suffix_master_product_title', '_suffix_master_price');

