-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('supersearch_public_key', 'supersearch_mobile_top_offset', 'supersearch_desktop_top_offset', 'supersearch_private_key', 'supersearch_changed_posts');

