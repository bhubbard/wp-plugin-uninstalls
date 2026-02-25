-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ts_bat_hide_nonhirearchicals', 'ts_bat_select_multiple', 'ts_bat_hide_real_name', 'ts_bat_hide_get', 'ts_bat_hide_remove', 'ts_bat_dont_empty');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ts_bulk_add_term');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ts_bulk_add_term');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ts_bulk_add_term');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ts_bulk_add_term');

