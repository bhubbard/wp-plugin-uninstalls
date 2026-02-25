-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kpftc_chat_enabled', 'kpftc_chat_link', 'kpftc_delay_time', 'kpftc_excluded_pages', 'kpftc_admin_disabled', 'KPFTC_VERSION', 'kpftc-admin-notice-activation');

