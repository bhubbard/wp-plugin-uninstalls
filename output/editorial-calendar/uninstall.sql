-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edcal_default_time', 'edcal_default_status', 'edcal_custom_posts_public', 'edcal_count', 'edcal_do_feedback', 'edcal_weeks_pref', 'edcal_author_pref', 'edcal_time_pref', 'edcal_wheelscroll_pref', 'edcal_status_pref');

