-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wmf_thwsw_ex_options', 'wmf_thwsw_options', 'wmf_thwsw_time_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wmf_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('wmf_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('wmf_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wmf_notice');

