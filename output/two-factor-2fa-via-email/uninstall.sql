-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SS88_2FAVE_notice_dismissed_smtp');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('SS882FAEmail_token', 'SS882FAEmail_timestamp', 'SS88_2FAVE_Enabled_API', 'SS88_2FAVE_Enabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('SS882FAEmail_token', 'SS882FAEmail_timestamp', 'SS88_2FAVE_Enabled_API', 'SS88_2FAVE_Enabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('SS882FAEmail_token', 'SS882FAEmail_timestamp', 'SS88_2FAVE_Enabled_API', 'SS88_2FAVE_Enabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('SS882FAEmail_token', 'SS882FAEmail_timestamp', 'SS88_2FAVE_Enabled_API', 'SS88_2FAVE_Enabled');

