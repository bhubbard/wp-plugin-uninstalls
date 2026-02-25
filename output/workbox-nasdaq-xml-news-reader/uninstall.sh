#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wb_xml_news_user_id'
wp option delete 'wb_xml_news_items_amount'
wp option delete 'wb_xml_news_cache_minutes'
wp option delete 'wb_xml_news_last_cache_time'
wp option delete 'wb_xml_news_read_all'
wp option delete 'wb_xml_news_last_ts'

# Delete Transients
wp transient delete 'wb_news_xml_update_process'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'external_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'external_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'external_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'external_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb_status'"
