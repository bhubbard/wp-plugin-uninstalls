-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hive_autolinker_license_data', 'hive_autolinker_gsc_connection', 'hive_autolinker_gsc_sites', 'hive_autolinker_gsc_selected_site', 'hive_autolinker_keywords', 'hive_autolinker_gsc_settings', 'hive_autolinker_settings_general', 'hive_autolinker_settings_suggestions', 'hive_autolinker_auto_links', 'hive_autolinker_link_suggestions', 'hive_autolinker_notified_keywords', 'hive_autolinker_gsc_last_import', 'hive_autolinker_gsc_keyword_data', 'hive_autolinker_last_full_link_analysis', 'hive_autolinker_popular_link_suggestions', 'hive_autolinker_license_verified_message', 'hive_autolinker_key_phrases_cache', 'hive_autolinker_cancel_suggestion_generation', 'hive_autolinker_suggestion_generation_status', 'hive_autolinker_temp_suggestions', 'hive_autolinker_link_structure_%', 'hive_autolinker_link_discovery_progress', 'hive_autolinker_suggestion_applied', 'hive_autolinker_suggestion_ignored');
DELETE FROM wp_options WHERE option_name LIKE '%last_full_link_analysis';
DELETE FROM wp_options WHERE option_name LIKE '%license_data';
DELETE FROM wp_options WHERE option_name LIKE '%settings_general';
DELETE FROM wp_options WHERE option_name LIKE '%settings_suggestions';
DELETE FROM wp_options WHERE option_name LIKE '%gsc_settings';
DELETE FROM wp_options WHERE option_name LIKE 'hive_autolinker_links_post_%';
DELETE FROM wp_options WHERE option_name LIKE '%suggestion_generation_status';
DELETE FROM wp_options WHERE option_name LIKE '%link_discovery_progress';
DELETE FROM wp_options WHERE option_name LIKE '%license_verified_message';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hive_autolinker_links_analyzed', '_hive_autolinker_discovered_links', '_hive_autolinker_previous_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hive_autolinker_links_analyzed', '_hive_autolinker_discovered_links', '_hive_autolinker_previous_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hive_autolinker_links_analyzed', '_hive_autolinker_discovered_links', '_hive_autolinker_previous_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hive_autolinker_links_analyzed', '_hive_autolinker_discovered_links', '_hive_autolinker_previous_content');

