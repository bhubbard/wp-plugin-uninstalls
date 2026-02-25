-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pdt_display_timer_enable_countdown_timer', 'pdt_display_timer_set_count_timer', 'pdt_display_timer_show_visited_post_num', 'pdt_display_timer_check_currentPage', 'pdt_display_timer_completion_code', 'pdt_display_timer_start_button', 'pdt_display_timer_view_number_post', 'pdt_display_timer_random_post', 'pdt_display_timer_post_urls', 'pdt_display_timer_multiple_tab', 'pdt_display_timer_delayed_timer');
DELETE FROM wp_options WHERE option_name LIKE '%_hits';

