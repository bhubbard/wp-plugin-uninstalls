#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'virtuaria_gstore_code'
wp option delete 'virtuaria_google_ignore_categories'
wp option delete 'virtuaria_google_ignore_groups'
wp option delete 'virtuaria_google_frequency_feed'
wp option delete 'virtuaria_google_analytics'

# Delete Transients
wp transient delete 'virtuaria_google_feed_message'

# Clear Cron Jobs
wp cron event delete 'google_generate_feed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_unity_metric'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_unity_metric'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_unity_metric'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_unity_metric'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_box_metric'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_box_metric'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_box_metric'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_box_metric'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_brand'"
