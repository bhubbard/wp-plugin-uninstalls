-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('miyn-banner-attachment', 'miyn-secret-key', 'miyn-business-logo', 'photo_url', 'background_image', 'change-widgets-image', 'miyn-exclude-pages');

