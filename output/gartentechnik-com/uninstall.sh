#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gartentechnik_com_einstellungen'
wp option delete 'gartentechnik_com_gtcom_einstellungs_cache'
wp option delete 'gartentechnik_com_api_timeoutfehler'
wp option delete 'gartentechnik_com_standardseite_cache'
wp option delete 'gartentechnik_com_rss_import_bereits_importierte_quell_links'

# Clear Cron Jobs
wp cron event delete 'gartentechnik_com_rss_import'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kategorie'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kategorie'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kategorie'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kategorie'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'filter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'filter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'filter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'filter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tiefe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tiefe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tiefe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tiefe'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gartentechnik_com_rss_import_content_checksum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gartentechnik_com_rss_import_content_checksum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gartentechnik_com_rss_import_content_checksum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gartentechnik_com_rss_import_content_checksum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gartentechnik_com_rss_import_quell_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gartentechnik_com_rss_import_quell_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gartentechnik_com_rss_import_quell_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gartentechnik_com_rss_import_quell_link'"
