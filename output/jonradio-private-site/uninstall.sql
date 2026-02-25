-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jr_ps_log', 'jr_ps_debug_mode', 'jr_ps_spam_guard_log', 'jr_ps_settings', 'jr_ps_internal_settings', 'jr_ps_first_run_time', 'jr_ps_activated', 'jr_ps_licenses', 'jr_ps_donate_log', 'jr_ps_robots_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

