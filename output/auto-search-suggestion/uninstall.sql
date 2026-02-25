-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_post_type', 'auto_search_in', 'auto_post_type_front', 'auto_search_in_front', 'auto_post_thumb_front', 'auto_post_excerpt_front', 'auto_post_date_front', 'auto_post_limit_front');

