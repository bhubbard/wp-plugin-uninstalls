-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_social_wall_api_token');
DELETE FROM wp_options WHERE option_name LIKE '%_active';

