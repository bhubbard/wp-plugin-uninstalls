-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('algolia_autocomplete_enabled', 'algolia_autocomplete_debounce', 'algolia_autocomplete_config', 'algolia_override_native_search', 'algolia_instantsearch_template_version', 'algolia_application_id', 'algolia_search_api_key', 'algolia_api_key', 'algolia_index_name_prefix', 'algolia_powered_by_enabled', 'algolia_insights_enabled', 'algolia_synced_indices_ids', 'algolia_api_is_reachable', 'algolia_pmxi_page');
DELETE FROM wp_options WHERE option_name LIKE 'wp_algolia_child_posts_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attachment_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attachment_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attachment_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attachment_metadata');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_records_count';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_records_count';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_records_count';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_records_count';

