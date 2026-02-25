-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gfpd_post_taxonomies', 'gfpd_excluded_ids');

