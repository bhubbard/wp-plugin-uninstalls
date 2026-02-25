-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('PushMessageToWeChat', 'pmtw_pushbear_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Pmtw_Submit', 'nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('Pmtw_Submit', 'nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('Pmtw_Submit', 'nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Pmtw_Submit', 'nickname');

