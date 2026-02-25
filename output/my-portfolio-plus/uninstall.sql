-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpss_stw_access', 'wpss_stw_secret', 'wpss_projects_title', 'wpss_show_platforms');

