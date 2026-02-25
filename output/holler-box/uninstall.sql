-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hollerbox_settings', 'hwp_ac_api_key', 'hwp_ac_url', 'hwp_ck_api_key', 'hwp_mc_api_key', 'hwp_email_title', 'hwp_pro_edd_license', 'hwp_pro_edd_license_status', 'hwp_powered_by', 'holler_previous_updates', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_table_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hollerbox_closed_popups', 'hollerbox_popup_conversions');
DELETE FROM wp_usermeta WHERE meta_key IN ('hollerbox_closed_popups', 'hollerbox_popup_conversions');
DELETE FROM wp_termmeta WHERE meta_key IN ('hollerbox_closed_popups', 'hollerbox_popup_conversions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hollerbox_closed_popups', 'hollerbox_popup_conversions');

