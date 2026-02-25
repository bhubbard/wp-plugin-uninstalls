-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_ep-facet-meta', 'widget_ep-facet-meta-range', 'woocommerce_hide_out_of_stock_items', 'elasticpress_weighting', 'elasticpress_synonyms_post_id', 'ep_credentials', 'ep_host', 'active_sitewide_plugins', 'ep_language', 'ep_es_info_response_code', 'ep_es_info_response_error', 'ep_cli_sync_progress', 'ep_wpcli_sync_interrupted', 'ep_sync_interrupted', 'ep_es_info', 'ep_post_mapping_version', 'ep_meta_field_keys', 'ep_autosuggest_query_request_cache');
DELETE FROM wp_options WHERE option_name LIKE 'ep_related_posts_%';
DELETE FROM wp_options WHERE option_name LIKE 'ep_meta_field_keys_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', 'ep_exclude_from_search', 'pointers', 'search_term', '_wp_attachment_image_alt', 'ep_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', 'ep_exclude_from_search', 'pointers', 'search_term', '_wp_attachment_image_alt', 'ep_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', 'ep_exclude_from_search', 'pointers', 'search_term', '_wp_attachment_image_alt', 'ep_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', 'ep_exclude_from_search', 'pointers', 'search_term', '_wp_attachment_image_alt', 'ep_token');

