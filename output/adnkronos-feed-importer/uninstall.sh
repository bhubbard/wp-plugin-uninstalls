#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adnk_importer_options'
wp option delete 'adnk_settings_options'
wp option delete 'adn_site_active'

# Delete Transients
wp transient delete 'adnk_import_running'

# Clear Cron Jobs
wp cron event delete 'adnk_import_event'
wp cron event delete 'adki_add_cron_onceaday'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adkn_guid_post_feed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adkn_guid_post_feed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adkn_guid_post_feed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adkn_guid_post_feed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adkn_feed_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adkn_feed_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adkn_feed_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adkn_feed_category'"
