-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('printq_designer_version', 'pqd');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pqd_enable', 'pqd_template', 'pqd_template_settings', 'product_id', 'width', 'height', 'page_number', 'add_to_cart_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('pqd_enable', 'pqd_template', 'pqd_template_settings', 'product_id', 'width', 'height', 'page_number', 'add_to_cart_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('pqd_enable', 'pqd_template', 'pqd_template_settings', 'product_id', 'width', 'height', 'page_number', 'add_to_cart_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pqd_enable', 'pqd_template', 'pqd_template_settings', 'product_id', 'width', 'height', 'page_number', 'add_to_cart_data');

