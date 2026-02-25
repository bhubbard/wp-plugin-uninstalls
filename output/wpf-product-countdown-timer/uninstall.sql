-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpfound_date_range', 'wpfound_date_time', 'wpfound_timer_heading_text', 'wpfound_enable_timer', 'wpfound_enable_progress_bar');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpfound_date_range', 'wpfound_date_time', 'wpfound_timer_heading_text', 'wpfound_enable_timer', 'wpfound_enable_progress_bar');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpfound_date_range', 'wpfound_date_time', 'wpfound_timer_heading_text', 'wpfound_enable_timer', 'wpfound_enable_progress_bar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpfound_date_range', 'wpfound_date_time', 'wpfound_timer_heading_text', 'wpfound_enable_timer', 'wpfound_enable_progress_bar');

