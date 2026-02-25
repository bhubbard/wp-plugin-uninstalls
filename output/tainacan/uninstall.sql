-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tainacan_option_facets_enable_filter_items', 'tainacan_option_facets_enable_count_items', 'tnc_option_recaptch_secret_key', 'tainacan_admin_ui_options', 'tainacan_option_index_pdf_content', 'tainacan_option_enable_default_search_engine', 'tainacan_option_override_item_single_template', 'tainacan_option_override_taxonomy_single_template', 'tainacan_option_override_collection_items_archive_template', 'tainacan_option_override_taxonomy_term_items_archive_template', 'tainacan_option_override_repository_items_archive_template', 'tainacan_option_default_view_mode', 'tainacan_option_enabled_view_modes', 'tainacan_option_default_order', 'tainacan_option_default_orderby', 'tainacan_option_enable_item_link_query_params', 'tainacan_option_search_results_per_page', 'tnc_option_recaptch_site_key', 'tainacan_dashboard_disabled_cards');
DELETE FROM wp_options WHERE option_name LIKE 'tnc_transient_%';
DELETE FROM wp_options WHERE option_name LIKE 'tainacan_bulk_%';
DELETE FROM wp_options WHERE option_name LIKE 'tainacan_option_%';
DELETE FROM wp_options WHERE option_name LIKE 'tnc_transient_submission_%';
DELETE FROM wp_options WHERE option_name LIKE '%_new_terms_ids';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'value', 'log_diffs', '_user_edit_lastr', 'collection_id', 'metadata_mapping', '_wp_attached_file', 'metadata_section_id', 'metadata_type', 'metadata_type_options', 'tainacan_prefs');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'value', 'log_diffs', '_user_edit_lastr', 'collection_id', 'metadata_mapping', '_wp_attached_file', 'metadata_section_id', 'metadata_type', 'metadata_type_options', 'tainacan_prefs');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'value', 'log_diffs', '_user_edit_lastr', 'collection_id', 'metadata_mapping', '_wp_attached_file', 'metadata_section_id', 'metadata_type', 'metadata_type_options', 'tainacan_prefs');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'value', 'log_diffs', '_user_edit_lastr', 'collection_id', 'metadata_mapping', '_wp_attached_file', 'metadata_section_id', 'metadata_type', 'metadata_type_options', 'tainacan_prefs');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_option_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_option_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_option_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_option_%';

