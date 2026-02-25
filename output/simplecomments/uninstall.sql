-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sm_display_avatars', 'sm_user_delete', 'sm_user_edit', 'sm_enable_report');

