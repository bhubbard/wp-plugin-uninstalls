-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcdm_minimum_amount', 'wcdm_maximum_amount', 'wcdm_disabled_tax', 'wcdm_installed', 'wcdm_add_to_cart_btn_text', 'wcdm_editable_cart_price', 'wcdm_disabled_coupon_field', 'wcdm_expired_text', 'wcdm_fast_checkout', 'wcdm_skip_cart', 'wcdm_delete_data', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_flash_messages';
DELETE FROM wp_options WHERE option_name LIKE '_transient_%';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', '_regular_price', 'wcdm_goal_amount', 'wcdm_is_predefined_amounts', 'wcdm_predefined_amounts_title', 'wcdm_predefined_amounts', 'wcdm_is_custom_amount', 'wcdm_amount_increment_steps', 'wcdm_min_amount', 'wcdm_max_amount', 'wcdm_campaign_id', '_end_date', '_raised_amount', 'wcdm_orders_id', 'wcdm_campaign_cause');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', '_regular_price', 'wcdm_goal_amount', 'wcdm_is_predefined_amounts', 'wcdm_predefined_amounts_title', 'wcdm_predefined_amounts', 'wcdm_is_custom_amount', 'wcdm_amount_increment_steps', 'wcdm_min_amount', 'wcdm_max_amount', 'wcdm_campaign_id', '_end_date', '_raised_amount', 'wcdm_orders_id', 'wcdm_campaign_cause');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', '_regular_price', 'wcdm_goal_amount', 'wcdm_is_predefined_amounts', 'wcdm_predefined_amounts_title', 'wcdm_predefined_amounts', 'wcdm_is_custom_amount', 'wcdm_amount_increment_steps', 'wcdm_min_amount', 'wcdm_max_amount', 'wcdm_campaign_id', '_end_date', '_raised_amount', 'wcdm_orders_id', 'wcdm_campaign_cause');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', '_regular_price', 'wcdm_goal_amount', 'wcdm_is_predefined_amounts', 'wcdm_predefined_amounts_title', 'wcdm_predefined_amounts', 'wcdm_is_custom_amount', 'wcdm_amount_increment_steps', 'wcdm_min_amount', 'wcdm_max_amount', 'wcdm_campaign_id', '_end_date', '_raised_amount', 'wcdm_orders_id', 'wcdm_campaign_cause');

