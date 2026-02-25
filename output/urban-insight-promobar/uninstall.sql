-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('urbipb_enable_disclaimer', 'urbipb_disclaimer_html', 'urbipb_disclaimer_fixed', 'urbipb_disclaimer_background', 'urbipb_disclaimer_icon', 'urbipb_disclaimer_start_date', 'urbipb_disclaimer_start_time', 'urbipb_disclaimer_end_date', 'urbipb_disclaimer_end_time', 'urbipb_exclude_pages', 'urbipb_cookie_expire', 'urbipb_enable_localhost', 'urbipb_cookie_set_value', 'urbipb_announce_delay');

