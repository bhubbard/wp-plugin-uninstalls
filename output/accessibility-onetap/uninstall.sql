-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onetap_settings', 'apop_localized_labels', 'onetap_install_timestamp', 'onetap_review_banner_disabled', 'onetap_review_banner_next_show', 'onetap_show_accessibility', 'onetap_select_language', 'onetap_company_name', 'onetap_company_website', 'onetap_business_email', 'onetap_confirmation_checkbox', 'onetap_editor_generator', 'onetap_license_status', 'onetap_modules', 'onetap_general_settings', 'onetap_localized_labels');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

