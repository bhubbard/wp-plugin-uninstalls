-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ollits_wishlist_page_id', 'ollitsaw_button_position_shop', 'ollitsaw_button_priority_shop', 'ollitsaw_button_position_product', 'ollitsaw_button_priority_product', 'ollitsaw_button_add_to_wishlist_text', 'ollitsaw_button_remove_from_wishlist_text', 'ollitsaw_page_style', 'ollitsaw_email_notifications');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ol_its_advanced_wishlist');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ol_its_advanced_wishlist');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ol_its_advanced_wishlist');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ol_its_advanced_wishlist');

