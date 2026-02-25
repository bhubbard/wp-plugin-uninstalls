-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bat_header', 'bat_loop', 'bat_sidebar', 'bat_footer', 'bat_comments');

