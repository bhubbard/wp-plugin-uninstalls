-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('giftcard_messages', 'gift4u_setup_wizard', 'gift4u_data', 'villatheme_hide_admin_toolbar', 'update_plugins', 'villatheme_item_21055', 'villatheme_call', 'villatheme_ads', 'villatheme_notices', 'villatheme_called');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tax_status', '_tax_class', '_gift4u_image_ids', '_gift4u_card_template', '_gift4u_discount_rules', '_gift4u_message_character_limit');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tax_status', '_tax_class', '_gift4u_image_ids', '_gift4u_card_template', '_gift4u_discount_rules', '_gift4u_message_character_limit');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tax_status', '_tax_class', '_gift4u_image_ids', '_gift4u_card_template', '_gift4u_discount_rules', '_gift4u_message_character_limit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tax_status', '_tax_class', '_gift4u_image_ids', '_gift4u_card_template', '_gift4u_discount_rules', '_gift4u_message_character_limit');

