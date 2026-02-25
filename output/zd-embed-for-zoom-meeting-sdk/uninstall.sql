-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zdze_settings');
DELETE FROM wp_options WHERE option_name LIKE 'zdze_token_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_zdze_meeting_number', '_zdze_passcode', '_zdze_auto_join', '_zdze_height');
DELETE FROM wp_usermeta WHERE meta_key IN ('_zdze_meeting_number', '_zdze_passcode', '_zdze_auto_join', '_zdze_height');
DELETE FROM wp_termmeta WHERE meta_key IN ('_zdze_meeting_number', '_zdze_passcode', '_zdze_auto_join', '_zdze_height');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_zdze_meeting_number', '_zdze_passcode', '_zdze_auto_join', '_zdze_height');

