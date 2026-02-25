-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tsml_data_sources', 'tsml_auto_import', 'tsml_log', 'tsml_version', 'tsml_program', 'tsml_distance_units', 'tsml_contact_display', 'tsml_sharing', 'tsml_sharing_keys', 'tsml_feedback_addresses', 'tsml_notification_addresses', 'tsml_user_interface', 'tsml_timezone', 'tsml_entity', 'tsml_addresses', 'tsml_bounds', 'tsml_types_in_use', 'tsml_cache_writable', 'tsml_import_buffer', 'tsml_cache', 'tsml_bulk_process');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('day', 'time', 'data_source', 'types', 'formatted_address', 'latitude', 'longitude', 'approximate', 'timezone', 'end_time', 'group_id', 'conference_url', 'conference_url_notes', 'conference_phone', 'conference_phone_notes');
DELETE FROM wp_usermeta WHERE meta_key IN ('day', 'time', 'data_source', 'types', 'formatted_address', 'latitude', 'longitude', 'approximate', 'timezone', 'end_time', 'group_id', 'conference_url', 'conference_url_notes', 'conference_phone', 'conference_phone_notes');
DELETE FROM wp_termmeta WHERE meta_key IN ('day', 'time', 'data_source', 'types', 'formatted_address', 'latitude', 'longitude', 'approximate', 'timezone', 'end_time', 'group_id', 'conference_url', 'conference_url_notes', 'conference_phone', 'conference_phone_notes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('day', 'time', 'data_source', 'types', 'formatted_address', 'latitude', 'longitude', 'approximate', 'timezone', 'end_time', 'group_id', 'conference_url', 'conference_url_notes', 'conference_phone', 'conference_phone_notes');

