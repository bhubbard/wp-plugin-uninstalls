-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('superzoomgallery_thumb', 'superzoomgallery_medium', 'superzoomgallery_full', 'superzoomgallery_showcaptions', 'superzoomgallery_captionfield', 'superzoomgallery_overwrite_gallery', 'superzoomgallery_innerzoom', 'superzoomgallery_usecss3');

