-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdoodle_settings', 'wpdoodle_default_rules_added', 'et_divi', 'wpdoodle_form_errors', 'mddoodle_logo_admin_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpdoodle_occasion', '_wpdoodle_region', '_wpdoodle_countries', '_wpdoodle_start_date', '_wpdoodle_end_date', '_wpdoodle_repeat_annual', '_wpdoodle_status', '_wpdoodle_primary_logo', '_wpdoodle_light_logo', '_wpdoodle_dark_logo', '_wpdoodle_mobile_logo', '_wpdoodle_is_default', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpdoodle_occasion', '_wpdoodle_region', '_wpdoodle_countries', '_wpdoodle_start_date', '_wpdoodle_end_date', '_wpdoodle_repeat_annual', '_wpdoodle_status', '_wpdoodle_primary_logo', '_wpdoodle_light_logo', '_wpdoodle_dark_logo', '_wpdoodle_mobile_logo', '_wpdoodle_is_default', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpdoodle_occasion', '_wpdoodle_region', '_wpdoodle_countries', '_wpdoodle_start_date', '_wpdoodle_end_date', '_wpdoodle_repeat_annual', '_wpdoodle_status', '_wpdoodle_primary_logo', '_wpdoodle_light_logo', '_wpdoodle_dark_logo', '_wpdoodle_mobile_logo', '_wpdoodle_is_default', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpdoodle_occasion', '_wpdoodle_region', '_wpdoodle_countries', '_wpdoodle_start_date', '_wpdoodle_end_date', '_wpdoodle_repeat_annual', '_wpdoodle_status', '_wpdoodle_primary_logo', '_wpdoodle_light_logo', '_wpdoodle_dark_logo', '_wpdoodle_mobile_logo', '_wpdoodle_is_default', '_wp_attachment_image_alt');

