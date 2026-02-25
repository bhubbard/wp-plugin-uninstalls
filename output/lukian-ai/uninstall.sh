#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lukianai_feedbacks'
wp option delete 'lukianai_options'
wp option delete 'lukianai_credit_options'

# Delete Transients
wp transient delete 'lukianai_enhancements'

# Clear Cron Jobs
wp cron event delete 'lukianai_monthly_credit_reset'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fave_property_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fave_property_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fave_property_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fave_property_images'"
