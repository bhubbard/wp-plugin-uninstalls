-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nt_page_in_transition', 'nt_page_out_transition', 'nt_page_in_duration', 'nt_page_out_duration', 'nt_show_loading', 'nt_loading_color');

