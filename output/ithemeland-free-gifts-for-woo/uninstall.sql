-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wgb_offer_rules_option_values', 'wgbl_rules', 'wgbl_option_values', 'wgb_option_values', 'wgb_some_setting', 'wgb_usage_track', 'ithemeland_wgb_email_subscription_sent', 'wgb_onboarding', 'wgb_opt_in', 'wgb_settings', 'wgb_rules', 'itg_localization_free', 'itg_localization_our_gift', 'itg_localization_gift_cart_type_label', 'itg_localization_select_gift', 'itg_localization_free_gift_removed', 'itg_localization_notice_checkout_message', 'itg_localization_notice_checkout_message_link_here', 'itg_localization_free_gift_added', 'itg_localization_add_gift', 'itg_localization_no_thanks', 'itg_localization_free_gift_empty_message', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_price_for_gift', 'gift_set');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_price_for_gift', 'gift_set');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_price_for_gift', 'gift_set');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_price_for_gift', 'gift_set');

