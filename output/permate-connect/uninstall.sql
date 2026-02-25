-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('permate_setting_enable', 'permate_setting_gtm', 'permate_setting_commission', 'permate_setting_multiple_events', 'permate_setting_conversion_tracking', 'permate_setting_conversion_endpoint', 'permate_setting_conversion_post_type', 'permate_setting_manual_approve', 'permate_setting_api_key', 'permate_setting_adv_id', 'permate_setting_offer_id', 'permate_setting_approved_conversion', 'permate_setting_reject_conversion', 'permate_setting_list_endpoint', 'permate_setting_url_cdn', 'permate_setting_url_tracking', 'permate_setting_url_api');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_permate_ci');
DELETE FROM wp_usermeta WHERE meta_key IN ('_permate_ci');
DELETE FROM wp_termmeta WHERE meta_key IN ('_permate_ci');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_permate_ci');

