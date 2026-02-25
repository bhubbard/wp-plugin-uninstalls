-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mrmrkdofa_cron_frequency', 'mrmrkdofa_sort_entries_by', 'mrmrkdofa_entries_limit', 'mrmrkdofa_show_post_type', 'mrmrkdofa_word_count', 'mrmrkdofa_site_description', 'mrmrkdofa_excluded_ids', 'mrmrkdofa_excluded_categories', 'mrmrkdofa_excluded_tags', 'mrmrkdofa_generate_md_html', 'mrmrkdofa_daily_time', 'mrmrkdofa_hourly_minute', 'mrmrkdofa_weekly_day', 'mrmrkdofa_weekly_time', 'mrmrkdofa_monthly_day', 'mrmrkdofa_monthly_time', 'mrmrkdofa_md_html_removed', 'mrmrkdofa_md_home');
DELETE FROM wp_options WHERE option_name LIKE 'mrmrkdofa_md_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_data');

