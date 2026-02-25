-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('unlockafe_ai_text_generator_settings', '_unlockafe_addons_opstions', 'unlockafe_default_header', 'unlockafe_default_footer', 'unlockafe_google_sheets_settings', 'unlockafe_google_map_api_key', 'unlockafe_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('coupon_categories', 'unlockafe_limit_usage_per_time_period', 'unlockafe_allowed_user_roles_usage', 'unlockafe_strict_one_time_use', '_used_by', 'usage_count', '_unlockafe_gift_card_amount', '_regular_price', '_price', '_unlockafe_store_credit', '_unlockafe_gift_card_template', '_unlockafe_allow_custom_amount', '_unlockafe_header_template', '_unlockafe_footer_template', '_wp_attachment_image_alt', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('coupon_categories', 'unlockafe_limit_usage_per_time_period', 'unlockafe_allowed_user_roles_usage', 'unlockafe_strict_one_time_use', '_used_by', 'usage_count', '_unlockafe_gift_card_amount', '_regular_price', '_price', '_unlockafe_store_credit', '_unlockafe_gift_card_template', '_unlockafe_allow_custom_amount', '_unlockafe_header_template', '_unlockafe_footer_template', '_wp_attachment_image_alt', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('coupon_categories', 'unlockafe_limit_usage_per_time_period', 'unlockafe_allowed_user_roles_usage', 'unlockafe_strict_one_time_use', '_used_by', 'usage_count', '_unlockafe_gift_card_amount', '_regular_price', '_price', '_unlockafe_store_credit', '_unlockafe_gift_card_template', '_unlockafe_allow_custom_amount', '_unlockafe_header_template', '_unlockafe_footer_template', '_wp_attachment_image_alt', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('coupon_categories', 'unlockafe_limit_usage_per_time_period', 'unlockafe_allowed_user_roles_usage', 'unlockafe_strict_one_time_use', '_used_by', 'usage_count', '_unlockafe_gift_card_amount', '_regular_price', '_price', '_unlockafe_store_credit', '_unlockafe_gift_card_template', '_unlockafe_allow_custom_amount', '_unlockafe_header_template', '_unlockafe_footer_template', '_wp_attachment_image_alt', 'rating');

