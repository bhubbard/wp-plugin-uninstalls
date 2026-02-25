-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('smp_poll_status', 'smp_poll_color_options', 'smp_display_poll_result', 'smp_poll_color', 'smp_poll_second_color', 'smp_end_date', 'smp_poll_option', 'smp_poll_option_id', 'smp_vote_total_count', 'smpp_status', 'smpp_color_options', 'smpp_display_poll_result', 'smpp_color', 'smpp_second_color', 'smpp_end_date', 'smpp_option', 'smpp_option_id', 'smpp_vote_total_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('smp_poll_status', 'smp_poll_color_options', 'smp_display_poll_result', 'smp_poll_color', 'smp_poll_second_color', 'smp_end_date', 'smp_poll_option', 'smp_poll_option_id', 'smp_vote_total_count', 'smpp_status', 'smpp_color_options', 'smpp_display_poll_result', 'smpp_color', 'smpp_second_color', 'smpp_end_date', 'smpp_option', 'smpp_option_id', 'smpp_vote_total_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('smp_poll_status', 'smp_poll_color_options', 'smp_display_poll_result', 'smp_poll_color', 'smp_poll_second_color', 'smp_end_date', 'smp_poll_option', 'smp_poll_option_id', 'smp_vote_total_count', 'smpp_status', 'smpp_color_options', 'smpp_display_poll_result', 'smpp_color', 'smpp_second_color', 'smpp_end_date', 'smpp_option', 'smpp_option_id', 'smpp_vote_total_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('smp_poll_status', 'smp_poll_color_options', 'smp_display_poll_result', 'smp_poll_color', 'smp_poll_second_color', 'smp_end_date', 'smp_poll_option', 'smp_poll_option_id', 'smp_vote_total_count', 'smpp_status', 'smpp_color_options', 'smpp_display_poll_result', 'smpp_color', 'smpp_second_color', 'smpp_end_date', 'smpp_option', 'smpp_option_id', 'smpp_vote_total_count');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'smp_vote_count_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'smp_vote_count_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'smp_vote_count_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'smp_vote_count_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'smpp_vote_count_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'smpp_vote_count_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'smpp_vote_count_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'smpp_vote_count_%';

