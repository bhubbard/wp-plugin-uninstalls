-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('confection_enable_community', 'confection_enable_woocommerce', 'confection_version', 'confection_ajax_name', 'confection_write_key', 'confection_account_id', 'confection_writed_key', 'confection_wp_ajax', 'confection_disable_analytics', 'confection_custom_cable_url', 'confection_inline_script', 'confection_additional_code', 'confection_privacy', 'confection_banner', 'confection_show_footer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_confection_uuid', '_confection_uuid_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('_confection_uuid', '_confection_uuid_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('_confection_uuid', '_confection_uuid_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_confection_uuid', '_confection_uuid_sent');

