-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spotlight_search_opt', 'csf_demo_mode', 'spotlight_search_installed', 'spotlight_search_version');

