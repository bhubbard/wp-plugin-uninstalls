-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('read_more_link', 'more_tag_prior', 'home_excerpt_length', 'archive_excerpt_length', 'allowd_tag');

