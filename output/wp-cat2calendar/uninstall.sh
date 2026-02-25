#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_cat2cal_use_permalinks'
wp option delete 'wp_cat2cal_use_default_css'
wp option delete 'wp_cat2cal_show_future_posts'

