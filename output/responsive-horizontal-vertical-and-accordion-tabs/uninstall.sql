-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wrt_responsive_tabs_msg', 'wp_vgallery_thumbnail_msg');

