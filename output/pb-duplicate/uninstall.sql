-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pb_duplicate_post_status', 'pb_duplicate_post_redirect', 'pb_duplicate_post_types', 'pb_duplicate_post_prefix', 'pb_duplicate_post_suffix', 'pb_duplicate_post_copy_terms', 'pb_duplicate_post_copy_meta');

