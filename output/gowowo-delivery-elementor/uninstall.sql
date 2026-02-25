-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gonowo_options', 'gonowo_color_main', 'gonowo_color_main_hover');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'gonowo_customer_info', 'gonowo_price', 'gonowo_attribute', 'gonowo_extra', 'gonowo_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'gonowo_customer_info', 'gonowo_price', 'gonowo_attribute', 'gonowo_extra', 'gonowo_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'gonowo_customer_info', 'gonowo_price', 'gonowo_attribute', 'gonowo_extra', 'gonowo_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'gonowo_customer_info', 'gonowo_price', 'gonowo_attribute', 'gonowo_extra', 'gonowo_gallery');

