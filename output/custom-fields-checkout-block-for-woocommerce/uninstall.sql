-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('field_type_cfwjm', 'field_location_cfwjm', 'field_options_cfwjm', 'field_required_cfwjm', 'field_placeholder_cfwjm', 'field_dateformat_cfwjm');
DELETE FROM wp_usermeta WHERE meta_key IN ('field_type_cfwjm', 'field_location_cfwjm', 'field_options_cfwjm', 'field_required_cfwjm', 'field_placeholder_cfwjm', 'field_dateformat_cfwjm');
DELETE FROM wp_termmeta WHERE meta_key IN ('field_type_cfwjm', 'field_location_cfwjm', 'field_options_cfwjm', 'field_required_cfwjm', 'field_placeholder_cfwjm', 'field_dateformat_cfwjm');
DELETE FROM wp_commentmeta WHERE meta_key IN ('field_type_cfwjm', 'field_location_cfwjm', 'field_options_cfwjm', 'field_required_cfwjm', 'field_placeholder_cfwjm', 'field_dateformat_cfwjm');

