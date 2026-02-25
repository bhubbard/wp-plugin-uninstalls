-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_hide_out_of_stock_items', 'eprobe_weighting', 'elasticpress_synonyms_post_id', 'eprobe_credentials', 'eprobe_host', 'eprobe_subscription_id', 'active_sitewide_plugins', 'eprobe_language', 'eprobe_es_info_response_code', 'eprobe_es_info_response_error', 'eprobe_cli_sync_progress', 'eprobe_wpcli_sync_interrupted', 'eprobe_sync_interrupted', 'eprobe_es_info', 'eprobe_post_mapping_version', 'eprobe_meta_field_keys', 'eprobe_autosuggest_query_request_cache');
DELETE FROM wp_options WHERE option_name LIKE 'eprobe_related_posts_%';
DELETE FROM wp_options WHERE option_name LIKE 'eprobe_meta_field_keys_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ep_exclude_from_search', 'pointers', 'search_term', '_wp_attachment_image_alt', 'ep_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('ep_exclude_from_search', 'pointers', 'search_term', '_wp_attachment_image_alt', 'ep_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('ep_exclude_from_search', 'pointers', 'search_term', '_wp_attachment_image_alt', 'ep_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ep_exclude_from_search', 'pointers', 'search_term', '_wp_attachment_image_alt', 'ep_token');

