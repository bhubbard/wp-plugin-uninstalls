-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('event-start-date', 'event-end-date', 'event-venue', 'event-start-time', 'event-end-time', 'event-participants', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('event-start-date', 'event-end-date', 'event-venue', 'event-start-time', 'event-end-time', 'event-participants', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('event-start-date', 'event-end-date', 'event-venue', 'event-start-time', 'event-end-time', 'event-participants', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('event-start-date', 'event-end-date', 'event-venue', 'event-start-time', 'event-end-time', 'event-participants', '_wp_attachment_image_alt');

