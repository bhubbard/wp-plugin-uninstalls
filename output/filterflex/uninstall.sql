-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('filterflex_settings', 'filterflex_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_filterflex_priority', '_filterflex_output_config', '_filterflex_transformations', '_filterflex_apply_area', '_filterflex_location_rules', '_filterflex_filterable_element', '_filterflex_context_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_filterflex_priority', '_filterflex_output_config', '_filterflex_transformations', '_filterflex_apply_area', '_filterflex_location_rules', '_filterflex_filterable_element', '_filterflex_context_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_filterflex_priority', '_filterflex_output_config', '_filterflex_transformations', '_filterflex_apply_area', '_filterflex_location_rules', '_filterflex_filterable_element', '_filterflex_context_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_filterflex_priority', '_filterflex_output_config', '_filterflex_transformations', '_filterflex_apply_area', '_filterflex_location_rules', '_filterflex_filterable_element', '_filterflex_context_settings');

