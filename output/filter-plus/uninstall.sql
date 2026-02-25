-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('filter_plus_settings', 'woocommerce_currency_pos');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('label', 'type', 'style', 'custom_field_list', 'featured_image', 'thumbnail_id', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('label', 'type', 'style', 'custom_field_list', 'featured_image', 'thumbnail_id', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('label', 'type', 'style', 'custom_field_list', 'featured_image', 'thumbnail_id', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('label', 'type', 'style', 'custom_field_list', 'featured_image', 'thumbnail_id', 'first_name', 'last_name');

