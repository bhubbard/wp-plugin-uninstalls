-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('metadupo_allowed_roles', 'metadupo_post_status', 'metadupo_post_author', 'metadupo_post_date', 'metadupo_allowed_post_types');

