-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('citrus_data_source', 'citrus_api_key', 'citrus_base_url', 'citrus_org_id', 'citrus_publication_url', 'citrus_sync_interval', 'citrus_cache_duration', 'citrus_auto_sync', 'citrus_last_sync', 'citrus_openai_api_key', 'citrus_openai_api_endpoint', 'citrus_ai_enabled', 'citrus_ai_model', 'citrus_custom_css', 'citrus_color_scheme', 'citrus_bibtex_file_path');
DELETE FROM wp_options WHERE option_name LIKE 'citrus_%';

