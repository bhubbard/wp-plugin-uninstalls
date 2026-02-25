#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_update'"
wp option delete 'RRB_TOKENS'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'wany_cron_every_minute'
wp cron event delete 'wany_cron_daily'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'action4json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'action4json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'action4json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'action4json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rrbot_usr_promo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rrbot_usr_promo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rrbot_usr_promo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rrbot_usr_promo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
