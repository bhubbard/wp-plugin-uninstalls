-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wplms_bbb_meetings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bbb-room-moderator-code', 'bbb-room-viewer-code', 'bbb-room-meeting-id', 'bbb-room-recordable', 'bbb-room-wait-for-moderator');
DELETE FROM wp_usermeta WHERE meta_key IN ('bbb-room-moderator-code', 'bbb-room-viewer-code', 'bbb-room-meeting-id', 'bbb-room-recordable', 'bbb-room-wait-for-moderator');
DELETE FROM wp_termmeta WHERE meta_key IN ('bbb-room-moderator-code', 'bbb-room-viewer-code', 'bbb-room-meeting-id', 'bbb-room-recordable', 'bbb-room-wait-for-moderator');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bbb-room-moderator-code', 'bbb-room-viewer-code', 'bbb-room-meeting-id', 'bbb-room-recordable', 'bbb-room-wait-for-moderator');

