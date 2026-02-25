-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wb_ads_rotator_admin_welcome_options', 'buddypress-ads-rotator_admin_faq_option', 'default_post_edit_rows', 'wb_ads_image_id', '_wb_ads_rotator_is_new_install');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wb_ads_rotator_values', 'wb_ads_enable');
DELETE FROM wp_usermeta WHERE meta_key IN ('wb_ads_rotator_values', 'wb_ads_enable');
DELETE FROM wp_termmeta WHERE meta_key IN ('wb_ads_rotator_values', 'wb_ads_enable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wb_ads_rotator_values', 'wb_ads_enable');

