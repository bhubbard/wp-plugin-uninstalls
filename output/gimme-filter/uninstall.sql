-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('taxonomies_list', 'post_type_list', 'gimme_output_options');

