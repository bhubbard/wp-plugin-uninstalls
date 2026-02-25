-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('content_aggregator_version', 'content_aggregator_db_version', 'content_aggregator_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('content_aggregator_url', 'content_aggregator_source');
DELETE FROM wp_usermeta WHERE meta_key IN ('content_aggregator_url', 'content_aggregator_source');
DELETE FROM wp_termmeta WHERE meta_key IN ('content_aggregator_url', 'content_aggregator_source');
DELETE FROM wp_commentmeta WHERE meta_key IN ('content_aggregator_url', 'content_aggregator_source');

