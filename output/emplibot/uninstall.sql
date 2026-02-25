-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emplibot_public_key', 'emplibot_options', 'emplibot_plugin_outdated');
DELETE FROM wp_options WHERE option_name LIKE 'emplibot_zip_processing_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_wp_attachment_image_alt', '_emplibot_original_keyword', '_emplibot_search_volume', '_emplibot_competition_level', '_emplibot_language_form', '_emplibot_hero_image_url', '_emplibot_timestamp');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_wp_attachment_image_alt', '_emplibot_original_keyword', '_emplibot_search_volume', '_emplibot_competition_level', '_emplibot_language_form', '_emplibot_hero_image_url', '_emplibot_timestamp');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_wp_attachment_image_alt', '_emplibot_original_keyword', '_emplibot_search_volume', '_emplibot_competition_level', '_emplibot_language_form', '_emplibot_hero_image_url', '_emplibot_timestamp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_wp_attachment_image_alt', '_emplibot_original_keyword', '_emplibot_search_volume', '_emplibot_competition_level', '_emplibot_language_form', '_emplibot_hero_image_url', '_emplibot_timestamp');

