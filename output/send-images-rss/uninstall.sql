-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sendimagesrss_image_size', 'displayfeaturedimagegenesis', 'itsec_ban_users', 'sendimagesrss', 'sendimagesrss_simplify_feed', 'sendimagesrss_alternate_feed');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

