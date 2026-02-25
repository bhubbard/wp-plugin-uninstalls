#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sbs_package'
wp option delete 'step_order'
wp option delete 'sbs_general'
wp option delete 'sbs_version'
wp option delete 'sbs_navbar'
wp option delete 'sbs_onf'
wp option delete 'sbs_display'
wp option delete 'sbs_premium_key'

# Delete Transients
wp transient delete 'sbs_premium_key_valid'

# Clear Cron Jobs
wp cron event delete 'sbs_daily_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_merch_credit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_merch_credit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_merch_credit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_merch_credit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_required_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_required_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_required_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_required_product'"
