-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ss_exclude_child', 'ss_easy_mode', 'ss_show_children', 'ss_manual_cats', 'ss_template_mode', 'ss_template');

