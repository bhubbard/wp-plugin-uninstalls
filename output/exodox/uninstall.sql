-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('exodox_publisher_id', 'exodox_publisher_api_key', 'exodox_show_lock_info', 'exodox_show_create_account', 'exodox_show_report_abuse_link', 'exodox_dark_mode', 'exodox_popup_alignment', 'exodox_show_excerpt', 'exodox_disable_listing', 'exodox_lock_pages', 'exodox_lock_archives', 'exodox_redirect_pages', 'exodox_replace_wp_header', 'exodox_replace_wp_footer');

