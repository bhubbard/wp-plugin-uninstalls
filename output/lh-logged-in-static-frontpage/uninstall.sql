-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lh_logged_in_static_show_on_front', 'lh_logged_in_static_frontpage_page_id');

