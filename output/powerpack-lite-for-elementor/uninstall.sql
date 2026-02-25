-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_viewport_lg', 'elementor_viewport_md', 'pp_override_ms', 'pp_elementor_modules', 'pp_elementor_extensions', 'pp_license_status', 'pp_review_later_date', 'pp_review_already_did', 'pp_do_not_upgrade_to_pro', 'pp_install_date', 'pp_tracking_last_send', 'pp_tracking_notice', 'pp_elementor_used_modules', 'pp_elementor_notused_modules', 'pp_plugin_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'pp-custom-link');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'pp-custom-link');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'pp-custom-link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'pp-custom-link');

