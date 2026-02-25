-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vg_required_taxonomies_post_types', 'vg_required_taxonomies_taxonomies', 'vg_required_taxonomies_error_message');
DELETE FROM wp_options WHERE option_name LIKE 'vg_required_taxonomies_%';

