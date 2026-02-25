#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete '_siga4w_setting'
wp option delete 'widget_siga4w_widget'

# Delete Transients
wp transient delete 'siga4w_get_today_cache'
wp transient delete 'siga4w_get_all_cache'
wp transient delete 'sig4w_charts_month'
wp transient delete 'sig4w_charts_year'
wp transient delete 'sig4w_hot_posts_today'
wp transient delete 'sig4w_hot_posts_week'

