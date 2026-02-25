-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fbmsg_version', 'fbmsg_title', 'fbmsg_page', 'fbmsg_timeline', 'fbmsg_events', 'fbmsg_pos', 'fbmsg_lang', 'fbmsg_active');

