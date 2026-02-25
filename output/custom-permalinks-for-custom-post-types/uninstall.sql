-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('p105_permalink_structure_cpt', 'p105_priority_terms');

