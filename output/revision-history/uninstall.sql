-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rh_adjust_title', 'rh_title_class', 'rh_show_page_revisions', 'rh_show_post_revisions', 'rh_show_autosaves');

