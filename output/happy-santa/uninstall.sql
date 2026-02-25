-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('santa_speed', 'santa_style', 'santa_size', 'santa_direction');

