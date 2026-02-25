#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xtmpay_merchant_id'
wp option delete 'xtmpay_licensekey'
wp option delete 'xtmlicensekey_type'
wp option delete 'tmpay_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xvip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xvip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xvip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xvip'"
