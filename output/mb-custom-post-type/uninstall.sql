-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cptui_post_types', 'cptui_taxonomies', 'add_term_order_column');

