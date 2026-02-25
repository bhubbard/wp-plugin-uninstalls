-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cl_aff_comp_target_urls', 'cl_aff_comp_content', 'cl_aff_comp_target_word1', 'cl_aff_comp_class');

