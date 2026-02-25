#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'queantic_analytics_tracking_special_%'"
wp option delete 'queantic_analytics_do_redirect'
wp option delete 'queantic_analytics_tracking_special_home'
wp option delete 'queantic_analytics_tracking_special_blog'
wp option delete 'queantic_analytics_tracking_special_404'
wp option delete 'queantic_analytics_tracking_special_search'
wp option delete 'queantic_analytics_tracking_special_archive'
wp option delete 'queantic_analytics_tracking_special_wc_shop'

# Delete Transients
wp transient delete 'queantic_analytics_saved_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptp_tracking_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptp_tracking_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptp_tracking_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptp_tracking_code'"
