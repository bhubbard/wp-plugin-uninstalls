-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custif_pro_license_status', 'custif_pro_license_key', 'custif_installation_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_custom_iframe_notice_dismissed', '_custom_iframe_pro_notice_dismissed', '_custif_rating_notice_dismissed', '_custif_rating_remind_later', '_custif_elementor_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_custom_iframe_notice_dismissed', '_custom_iframe_pro_notice_dismissed', '_custif_rating_notice_dismissed', '_custif_rating_remind_later', '_custif_elementor_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_custom_iframe_notice_dismissed', '_custom_iframe_pro_notice_dismissed', '_custif_rating_notice_dismissed', '_custif_rating_remind_later', '_custif_elementor_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_custom_iframe_notice_dismissed', '_custom_iframe_pro_notice_dismissed', '_custif_rating_notice_dismissed', '_custif_rating_remind_later', '_custif_elementor_notice_dismissed');

