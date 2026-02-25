-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adventurebook_db_version', 'adventurebook_enable_inline_editing', 'adventurebook_settings', 'adventurebook_version', 'adventurebook_character_page_id', 'adventurebook_fixed_content_height', 'adventurebook_show_direction_icons', 'adventurebook_enable_keyboard_navigation', 'adventurebook_messages');
DELETE FROM wp_options WHERE option_name LIKE 'adventurebook_just_entered_zone_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_adventurebook_page_script', '_adventurebook_page_type', '_adventurebook_shop_items', '_adventurebook_shop_price_factor', '_adventurebook_type', '_additional_image', '_adventurebook_combat_system', '_adventurebook_start_page', 'adventurebook_last_parent', '_adventurebook_decision_options', '_adventurebook_audio_id', '_adventurebook_startpage');
DELETE FROM wp_usermeta WHERE meta_key IN ('_adventurebook_page_script', '_adventurebook_page_type', '_adventurebook_shop_items', '_adventurebook_shop_price_factor', '_adventurebook_type', '_additional_image', '_adventurebook_combat_system', '_adventurebook_start_page', 'adventurebook_last_parent', '_adventurebook_decision_options', '_adventurebook_audio_id', '_adventurebook_startpage');
DELETE FROM wp_termmeta WHERE meta_key IN ('_adventurebook_page_script', '_adventurebook_page_type', '_adventurebook_shop_items', '_adventurebook_shop_price_factor', '_adventurebook_type', '_additional_image', '_adventurebook_combat_system', '_adventurebook_start_page', 'adventurebook_last_parent', '_adventurebook_decision_options', '_adventurebook_audio_id', '_adventurebook_startpage');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_adventurebook_page_script', '_adventurebook_page_type', '_adventurebook_shop_items', '_adventurebook_shop_price_factor', '_adventurebook_type', '_additional_image', '_adventurebook_combat_system', '_adventurebook_start_page', 'adventurebook_last_parent', '_adventurebook_decision_options', '_adventurebook_audio_id', '_adventurebook_startpage');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'adventurebook_current_character_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'adventurebook_current_character_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'adventurebook_current_character_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'adventurebook_current_character_id_%';

