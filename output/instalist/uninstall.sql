-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plgnr_options', 'pluginer_license_data');
DELETE FROM wp_options WHERE option_name LIKE 'plgnr_post_saved_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_plgnr_plugin_slugs', '_plgnr_plugin_list_notes', '_plgnr_plugin_icons', '_plgnr_plugin_names', '_plgnr_plugin_required_plugins', '_is_primary_list');
DELETE FROM wp_usermeta WHERE meta_key IN ('_plgnr_plugin_slugs', '_plgnr_plugin_list_notes', '_plgnr_plugin_icons', '_plgnr_plugin_names', '_plgnr_plugin_required_plugins', '_is_primary_list');
DELETE FROM wp_termmeta WHERE meta_key IN ('_plgnr_plugin_slugs', '_plgnr_plugin_list_notes', '_plgnr_plugin_icons', '_plgnr_plugin_names', '_plgnr_plugin_required_plugins', '_is_primary_list');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_plgnr_plugin_slugs', '_plgnr_plugin_list_notes', '_plgnr_plugin_icons', '_plgnr_plugin_names', '_plgnr_plugin_required_plugins', '_is_primary_list');

