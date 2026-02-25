-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssn_sortby', 'ssn_show_all', 'ssn_exclude', 'ssn_hide_on_excluded', 'ssn_show_on_home', 'ssn_show_empty', 'ssn_a_heading', 'ep_exclude_pages');

