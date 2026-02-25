-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpadt_check_individual_types', 'wpadt_allow_duplicate_titles', 'wpadt_selected_post_types');

