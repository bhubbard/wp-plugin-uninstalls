-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quick-featured-images-settings', 'quick-featured-images-defaults', 'quick-featured-images');

