-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsc_field_name', 'wpsc_field_content', 'wpsc_field_where', 'wpsc_field_posts', 'wpsc_data', 'wpsc_plugin_version', 'wpsc_upgrade_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpsc_raw_mode', '_wpsc_from_iso', '_wpsc_to_iso', '_wpsc_from_ts', '_wpsc_to_ts', '_wpsc_geo_mode', '_wpsc_countries');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpsc_raw_mode', '_wpsc_from_iso', '_wpsc_to_iso', '_wpsc_from_ts', '_wpsc_to_ts', '_wpsc_geo_mode', '_wpsc_countries');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpsc_raw_mode', '_wpsc_from_iso', '_wpsc_to_iso', '_wpsc_from_ts', '_wpsc_to_ts', '_wpsc_geo_mode', '_wpsc_countries');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpsc_raw_mode', '_wpsc_from_iso', '_wpsc_to_iso', '_wpsc_from_ts', '_wpsc_to_ts', '_wpsc_geo_mode', '_wpsc_countries');

