-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpapu_post_types', 'bpapu_minimum_delay', 'bpapu_content_option');

