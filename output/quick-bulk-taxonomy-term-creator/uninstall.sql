-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qbttc_terms', 'qbttc_hierarchy_indent_character', 'qbttc_taxonomy');

