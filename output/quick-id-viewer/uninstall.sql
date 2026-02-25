-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qidvw_selected_post_types', 'qidvw_selected_taxonomies');

