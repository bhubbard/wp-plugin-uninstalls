-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_oct_offer_end_date', '_oct_enable_countdown', '_oct_custom_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('_oct_offer_end_date', '_oct_enable_countdown', '_oct_custom_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('_oct_offer_end_date', '_oct_enable_countdown', '_oct_custom_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_oct_offer_end_date', '_oct_enable_countdown', '_oct_custom_message');

