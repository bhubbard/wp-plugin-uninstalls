-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tantan_wordpress_s3');
DELETE FROM wp_options WHERE option_name LIKE 'as3cf_constant_%';

