-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eafl_migrated_to_version', 'eafl_specific_migrations', 'eafl_find_relations', 'eafl_flush', 'eafl_settings', 'eafl_activated', 'wpurp_cache', 'eafl_option', 'eafl_click_db_version', 'eafl_relation_db_version', 'eafl_import_links_csv');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eafl_feedback', 'eafl_dismissed_notices', 'eafl_clicks', 'eafl_clicks_summary', 'eafl_clicks_total', 'wprmp_equipment_eafl', 'wprmp_ingredient_eafl', 'wprmp_term_eafl', 'wpupg_custom_image_id', 'eafl_replacement');
DELETE FROM wp_usermeta WHERE meta_key IN ('eafl_feedback', 'eafl_dismissed_notices', 'eafl_clicks', 'eafl_clicks_summary', 'eafl_clicks_total', 'wprmp_equipment_eafl', 'wprmp_ingredient_eafl', 'wprmp_term_eafl', 'wpupg_custom_image_id', 'eafl_replacement');
DELETE FROM wp_termmeta WHERE meta_key IN ('eafl_feedback', 'eafl_dismissed_notices', 'eafl_clicks', 'eafl_clicks_summary', 'eafl_clicks_total', 'wprmp_equipment_eafl', 'wprmp_ingredient_eafl', 'wprmp_term_eafl', 'wpupg_custom_image_id', 'eafl_replacement');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eafl_feedback', 'eafl_dismissed_notices', 'eafl_clicks', 'eafl_clicks_summary', 'eafl_clicks_total', 'wprmp_equipment_eafl', 'wprmp_ingredient_eafl', 'wprmp_term_eafl', 'wpupg_custom_image_id', 'eafl_replacement');

