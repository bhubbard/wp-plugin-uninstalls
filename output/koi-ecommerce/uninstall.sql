-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('koi_url', 'koi_front_token', 'koi_back_token');

