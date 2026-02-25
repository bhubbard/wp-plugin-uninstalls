-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('olivery_connect_auto_send', 'olivery_connect_token', 'olivery_connect_status_map', 'olivery_add_connect_sequence_note', 'olivery_add_delivery_sequence_note', 'olivery_connect_field_mapping', 'olivery_connect_paid_methods');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_olivery_connect_sequence', '_delivery_status', '_delivery_sequence');
DELETE FROM wp_usermeta WHERE meta_key IN ('_olivery_connect_sequence', '_delivery_status', '_delivery_sequence');
DELETE FROM wp_termmeta WHERE meta_key IN ('_olivery_connect_sequence', '_delivery_status', '_delivery_sequence');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_olivery_connect_sequence', '_delivery_status', '_delivery_sequence');

