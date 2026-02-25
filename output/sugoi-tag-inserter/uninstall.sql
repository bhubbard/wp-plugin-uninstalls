-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sugotag_insert_header', 'sugotag_insert_footer', 'sugotag_gtm_id', 'sugotag_aw_id', 'sugotag_ga_id', 'sugotag_gtm_enabled', 'sugotag_aw_enabled', 'sugotag_ga_enabled', 'sugotag_insert_hidden_header', 'sugotag_insert_hidden_footer', 'sugotag_cross_domain_enabled', 'sugotag_cross_domain_1st', 'sugotag_cross_domain_2nd');

