-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('2j-photo-gallery', 'twoj_photo_gallery_BeforeActivator');

