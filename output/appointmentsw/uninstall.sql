-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('appointmentsw_changes', 'appointmentsw', 'asw-guest', 'asw-duration', 'asw-numdays', 'asw-maxoffset', 'asw-start_time_0', 'asw-end_time_0', 'asw-start_time_1', 'asw-end_time_1', 'appointmentsw-subject');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thechamp_large_avatar');
DELETE FROM wp_usermeta WHERE meta_key IN ('thechamp_large_avatar');
DELETE FROM wp_termmeta WHERE meta_key IN ('thechamp_large_avatar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thechamp_large_avatar');

