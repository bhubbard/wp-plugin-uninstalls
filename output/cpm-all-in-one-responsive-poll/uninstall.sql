-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpm_wp_poll_settings');
DELETE FROM wp_options WHERE option_name LIKE 'cpm_wp_poll_voted_user_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cpm_wp_poll_votes', 'cpm_wp_poll_chart_type', 'cpm_poll_multiple_value', 'cpm_wp_poll_show_result_only', 'cpm_wp_poll_never_expires', 'cpm_poll_expires_on');
DELETE FROM wp_usermeta WHERE meta_key IN ('cpm_wp_poll_votes', 'cpm_wp_poll_chart_type', 'cpm_poll_multiple_value', 'cpm_wp_poll_show_result_only', 'cpm_wp_poll_never_expires', 'cpm_poll_expires_on');
DELETE FROM wp_termmeta WHERE meta_key IN ('cpm_wp_poll_votes', 'cpm_wp_poll_chart_type', 'cpm_poll_multiple_value', 'cpm_wp_poll_show_result_only', 'cpm_wp_poll_never_expires', 'cpm_poll_expires_on');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cpm_wp_poll_votes', 'cpm_wp_poll_chart_type', 'cpm_poll_multiple_value', 'cpm_wp_poll_show_result_only', 'cpm_wp_poll_never_expires', 'cpm_poll_expires_on');

