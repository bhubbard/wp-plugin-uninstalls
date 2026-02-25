-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('parsely_data_schema_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_traffic_boost_original_link_attributes', '_traffic_boost_source_post_revision', '_traffic_boost_source_original_post_content', '_traffic_boost_source_original_paragraph', 'parsely_metadata_last_updated', 'wp_parsely_page', '_smart_link_applied');
DELETE FROM wp_usermeta WHERE meta_key IN ('_traffic_boost_original_link_attributes', '_traffic_boost_source_post_revision', '_traffic_boost_source_original_post_content', '_traffic_boost_source_original_paragraph', 'parsely_metadata_last_updated', 'wp_parsely_page', '_smart_link_applied');
DELETE FROM wp_termmeta WHERE meta_key IN ('_traffic_boost_original_link_attributes', '_traffic_boost_source_post_revision', '_traffic_boost_source_original_post_content', '_traffic_boost_source_original_paragraph', 'parsely_metadata_last_updated', 'wp_parsely_page', '_smart_link_applied');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_traffic_boost_original_link_attributes', '_traffic_boost_source_post_revision', '_traffic_boost_source_original_post_content', '_traffic_boost_source_original_paragraph', 'parsely_metadata_last_updated', 'wp_parsely_page', '_smart_link_applied');

