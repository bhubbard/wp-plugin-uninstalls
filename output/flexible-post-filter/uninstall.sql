-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fpf_button_background', 'fpf_thumbnail_border', 'fpf_button_text', 'fpf_button_hover', 'fpf_button_selection', 'jqs_button_alignment', 'jqs_select_categories', 'jqs_feature_enable_title', 'jqs_feature_enable_author', 'jqs_feature_enable_date');

