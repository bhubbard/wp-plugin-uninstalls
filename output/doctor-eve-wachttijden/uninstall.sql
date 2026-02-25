-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('doctoreve_wt_uuid', 'doctoreve_wt_fab_enabled', 'doctoreve_wt_fab_theme', 'doctoreve_wt_fab_color', 'doctoreve_wt_fab_text', 'doctoreve_wt_comp_theme', 'doctoreve_wt_comp_accent', 'doctoreve_wt_comp_title', 'doctoreve_wt_comp_show_search', 'doctoreve_wt_comp_show_count', 'doctoreve_wt_comp_limit');

