-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('afi_activation_notice', 'afi_admin_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_xml_file_path';
DELETE FROM wp_options WHERE option_name LIKE '%_import_frequency';
DELETE FROM wp_options WHERE option_name LIKE '%_post_title_format';
DELETE FROM wp_options WHERE option_name LIKE '%_post_content_format';
DELETE FROM wp_options WHERE option_name LIKE '%_field_mappings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('afi_activation_notice_dismissed', 'manufacturer_level2_value', 'year_value', 'price_value', 'mileage_value', 'color_value', '_afi_imported_image_urls', 'afi_feedback_dismissed', 'afi_survey_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('afi_activation_notice_dismissed', 'manufacturer_level2_value', 'year_value', 'price_value', 'mileage_value', 'color_value', '_afi_imported_image_urls', 'afi_feedback_dismissed', 'afi_survey_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('afi_activation_notice_dismissed', 'manufacturer_level2_value', 'year_value', 'price_value', 'mileage_value', 'color_value', '_afi_imported_image_urls', 'afi_feedback_dismissed', 'afi_survey_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('afi_activation_notice_dismissed', 'manufacturer_level2_value', 'year_value', 'price_value', 'mileage_value', 'color_value', '_afi_imported_image_urls', 'afi_feedback_dismissed', 'afi_survey_dismissed');

