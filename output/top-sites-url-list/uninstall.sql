-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tsul_google_authtoken', 'tsul_google_token', 'tsul_google_uid', 'tsul_hide_profiles', 'tsul_google_profile_name', 'tsul_first_fetch', 'tsul_cron_recurrance', 'tsul_show_in_admin_tables', 'tsul_full_stats', 'tsul_stats', 'widget_tsul');

