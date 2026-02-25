-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('em_content_image', 'em_image_url', 'em_source_code', 'em_active', 'em_sitewide');
DELETE FROM wp_options WHERE option_name LIKE 'em_%';

