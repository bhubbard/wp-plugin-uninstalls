#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pdt_display_timer_enable_countdown_timer'
wp option delete 'pdt_display_timer_set_count_timer'
wp option delete 'pdt_display_timer_show_visited_post_num'
wp option delete 'pdt_display_timer_check_currentPage'
wp option delete 'pdt_display_timer_completion_code'
wp option delete 'pdt_display_timer_start_button'
wp option delete 'pdt_display_timer_view_number_post'
wp option delete 'pdt_display_timer_random_post'
wp option delete 'pdt_display_timer_post_urls'
wp option delete 'pdt_display_timer_multiple_tab'
wp option delete 'pdt_display_timer_delayed_timer'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hits' OR option_name LIKE '_site_transient_%_hits'"

