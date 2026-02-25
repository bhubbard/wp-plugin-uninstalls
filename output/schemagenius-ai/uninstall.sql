-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scheai_bulk_progress', 'scheai_google_api_key', 'scheai_enable_caching', 'scheai_cache_duration', 'scheai_async_processing', 'scheai_load_assets_conditionally', 'scheai_delete_data_on_uninstall', 'scheai_version', 'scheai_db_version');
DELETE FROM wp_options WHERE option_name LIKE 'scheai_schema_%';
DELETE FROM wp_options WHERE option_name LIKE 'scheai_%';
DELETE FROM wp_options WHERE option_name LIKE 'scheai_schema_hash_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_scheai_schema', '_scheai_validation', '_scheai_schema_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('_scheai_schema', '_scheai_validation', '_scheai_schema_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('_scheai_schema', '_scheai_validation', '_scheai_schema_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_scheai_schema', '_scheai_validation', '_scheai_schema_hash');

