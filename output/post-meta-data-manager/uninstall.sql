-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pmdm_selected_post_types', 'pmdm_selected_taxonomies');

