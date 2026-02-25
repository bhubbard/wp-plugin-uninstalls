#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_top_and_active_vjck_cache_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_vjck'"
wp option delete 'widget_top_and_active_vjck_cache'

