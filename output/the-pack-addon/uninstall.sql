-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('the_pack_library', 'woocommerce_db_version', 'woocommerce_tax_display_shop', 'woocommerce_placeholder_image', 'woocommerce_review_rating_verification_required');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id', '_wp_attachment_image_alt', '_elementor_conditions', 'thumbnail_id', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id', '_wp_attachment_image_alt', '_elementor_conditions', 'thumbnail_id', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id', '_wp_attachment_image_alt', '_elementor_conditions', 'thumbnail_id', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id', '_wp_attachment_image_alt', '_elementor_conditions', 'thumbnail_id', 'rating');

