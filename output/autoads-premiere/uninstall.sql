-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autoads_premiere_plugin_version', 'autoads_premiere_options', 'autoads_premiere', 'autoads_premiere_field_googleid', 'autoads_premiere_field_exclusions');

