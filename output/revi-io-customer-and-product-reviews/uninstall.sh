#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'REVI_WIDGETS'
wp option delete 'REVI_API_METHOD'
wp option delete 'REVI_API_WORKING_URL'
wp option delete 'REVI_API_KEY'
wp option delete 'REVI_LAST_UPGRADE_VERSION'
wp option delete 'REVI_SELECTED_LANGUAGE'
wp option delete 'REVI_SUBSCRIPTION'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'REVI_WIDGET_%'"
wp option delete 'REVI_SECURITY_KEY'
wp option delete 'REVI_LANG'
wp option delete 'REVI_ACTIVE_LANGUAGES'
wp option delete 'REVI_MODULE_VERSION'
wp option delete 'REVI_ORDER_STATUSES'
wp option delete 'REVI_SYNC_PRODUCT_DESCRIPTION'
wp option delete 'REVI_DISPLAY_WIDGET_QUESTIONS_BIG'
wp option delete 'REVI_DISPLAY_WIDGET_QUESTIONS_SMALL'
wp option delete 'REVI_DISPLAY_WIDGET_WITHOUT_REVIEWS'
wp option delete 'REVI_CRON_TOKEN'
wp option delete 'REVI_NOTIFICATIONS'
wp option delete 'REVI_PRODUCT_METADATA'
wp option delete 'REVI_TAB_REVIEWS'
wp option delete 'REVI_PRODUCT_STARS_POSITION'
wp option delete 'REVI_DISPLAY_WIDGET_FLOATING'
wp option delete 'REVI_WOOCOMMERCE_REVIEWS'
wp option delete 'REVI_DISPLAY_PRODUCT_LIST_ALIGN'
wp option delete 'REVI_DISPLAY_PRODUCT_LIST_EMPTY'
wp option delete 'REVI_DISPLAY_PRODUCT_LIST_BLANK_SPACE'
wp option delete 'REVI_DISPLAY_PRODUCT_LIST_TEXT'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpml_language'"
