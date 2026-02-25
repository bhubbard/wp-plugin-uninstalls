-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('solo_sms_key', 'solo_sms_email', 'setting_change', 'phone_admin', 'isConnectedToInsim', 'insim_filter_usage', 'insim_campaign_stats', 'sim_to_shop_admin_alert', 'sim_to_shop_admin_alert_sent', 'sim_to_shop_freeoption', 'sim_to_shop_option_id_product', 'sim_to_shop_admin_phone', 'solo_sms_sender', 'is_team', 'is_premium', 'recipients', 'Sim_To_Shop_freeoption', 'subsc_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_first_name', 'shipping_first_name', 'billing_last_name', 'billing_phone', 'billing_country', 'insim_filter_presets', 'last_login', 'billing_city', 'first_name', 'last_name', 'phone_number', 'billing_firstname', 'billing_lastname');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_first_name', 'shipping_first_name', 'billing_last_name', 'billing_phone', 'billing_country', 'insim_filter_presets', 'last_login', 'billing_city', 'first_name', 'last_name', 'phone_number', 'billing_firstname', 'billing_lastname');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_first_name', 'shipping_first_name', 'billing_last_name', 'billing_phone', 'billing_country', 'insim_filter_presets', 'last_login', 'billing_city', 'first_name', 'last_name', 'phone_number', 'billing_firstname', 'billing_lastname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_first_name', 'shipping_first_name', 'billing_last_name', 'billing_phone', 'billing_country', 'insim_filter_presets', 'last_login', 'billing_city', 'first_name', 'last_name', 'phone_number', 'billing_firstname', 'billing_lastname');

