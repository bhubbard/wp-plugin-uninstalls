#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cmpopfly_custom_post_type_support'
wp option delete 'cm_popupflyin_json_api_pinprotect'
wp option delete 'cm-campaign-show-allpages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registered'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-was-registered'"
wp option delete 'active_sitewide_plugins'
wp option delete 'cmpopfly_glossaryPermalink'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cm_advertisement_items_custom_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cm_advertisement_items_custom_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cm_advertisement_items_custom_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cm_advertisement_items_custom_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fields'"
wp db query "DROP TABLE IF EXISTS wp_CURRENT_TIMESTAMP"
