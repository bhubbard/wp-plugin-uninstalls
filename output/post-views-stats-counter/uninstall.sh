#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_views_stats_counter_plus_dir'
wp option delete 'pvs_counter_schedule_check'
wp option delete 'pvs_counter_year_front_value'
wp option delete 'pvs_counter_month_front_value'
wp option delete 'pvs_counter_day_front_value'
wp option delete 'pvs_counter_year_back_value'
wp option delete 'pvs_counter_month_back_value'
wp option delete 'pvs_counter_day_back_value'
wp option delete 'pvs_counter_dayselect_value'
wp option delete 'pvs_counter_order_value'
wp option delete 'pvs_counter_title_value'
wp option delete 'pvs_counter_value_user'
wp option delete 'pvs_counter_value_admin'
wp option delete 'pvs_counter_value_reset'
wp option delete 'pvs_counter_value_admin_bots'
wp option delete 'pvs_counter_value_user_bots'
wp option delete 'post_views_stats_counter_plus_active'
wp option delete 'jal_db_version'

