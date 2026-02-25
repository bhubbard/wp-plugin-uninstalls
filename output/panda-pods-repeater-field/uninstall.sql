-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpods_all_tables', 'pprf_updated_tables');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pod_index', 'pandarepeaterfield_field_width');
DELETE FROM wp_usermeta WHERE meta_key IN ('pod_index', 'pandarepeaterfield_field_width');
DELETE FROM wp_termmeta WHERE meta_key IN ('pod_index', 'pandarepeaterfield_field_width');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pod_index', 'pandarepeaterfield_field_width');

