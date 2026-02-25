#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_woocci_zaytech_settings'
wp option delete 'woocci_jwt_token'
wp option delete 'woocci_pakms_key'
wp option delete 'woocci_reviews_installed_on'
wp option delete 'woocci_total_success_orders'
wp option delete 'wooccii_zaytech_version'
wp option delete 'woocci_version'

# Delete Transients
wp transient delete 'woocci_force_pakms'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocci_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocci_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocci_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocci_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocci_reviews_last_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocci_reviews_last_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocci_reviews_last_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocci_reviews_last_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocci_reviews_already_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocci_reviews_already_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocci_reviews_already_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocci_reviews_already_did'"
