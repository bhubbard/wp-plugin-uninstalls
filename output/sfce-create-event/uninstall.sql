-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfc_options', 'sfce_event_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fbuid', 'sfce_event_date', 'sfce_fb_event_status', 'fb_event_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('fbuid', 'sfce_event_date', 'sfce_fb_event_status', 'fb_event_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('fbuid', 'sfce_event_date', 'sfce_fb_event_status', 'fb_event_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fbuid', 'sfce_event_date', 'sfce_fb_event_status', 'fb_event_id');

