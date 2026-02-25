-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('five_r_gig_display_options', 'five_r_gig_input_examples');

