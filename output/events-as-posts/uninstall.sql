-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eap_settings_style', 'eap_settings', 'eap_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eap_from_day', 'eap_from_time', 'eap_until_day', 'eap_until_time', 'eap_location', 'eap_link_location', 'eap_city', 'eap_country', 'eap_add_info', 'eap_from_day_custom_format', 'eap_from_time_custom_format', 'eap_until_day_custom_format', 'eap_until_time_custom_format');
DELETE FROM wp_usermeta WHERE meta_key IN ('eap_from_day', 'eap_from_time', 'eap_until_day', 'eap_until_time', 'eap_location', 'eap_link_location', 'eap_city', 'eap_country', 'eap_add_info', 'eap_from_day_custom_format', 'eap_from_time_custom_format', 'eap_until_day_custom_format', 'eap_until_time_custom_format');
DELETE FROM wp_termmeta WHERE meta_key IN ('eap_from_day', 'eap_from_time', 'eap_until_day', 'eap_until_time', 'eap_location', 'eap_link_location', 'eap_city', 'eap_country', 'eap_add_info', 'eap_from_day_custom_format', 'eap_from_time_custom_format', 'eap_until_day_custom_format', 'eap_until_time_custom_format');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eap_from_day', 'eap_from_time', 'eap_until_day', 'eap_until_time', 'eap_location', 'eap_link_location', 'eap_city', 'eap_country', 'eap_add_info', 'eap_from_day_custom_format', 'eap_from_time_custom_format', 'eap_until_day_custom_format', 'eap_until_time_custom_format');

