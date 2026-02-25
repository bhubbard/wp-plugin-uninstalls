-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bsf_rt_general_settings', 'bsf_rt_saved_msg', 'bsf_rt_read_time_settings', 'bsf_rt_progress_bar_settings');

