-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('home_excerpt_length', 'archive_excerpt_length', 'allowd_tag', 'read_more_link');

