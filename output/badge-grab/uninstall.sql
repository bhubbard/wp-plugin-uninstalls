-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('badge_grab_url', 'badge_grab_title', 'badge_grab_image');

