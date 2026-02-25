#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpdt_version'

# Clear Cron Jobs
wp cron event delete 'wpdt_nightly_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plugin_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plugin_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plugin_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plugin_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'average_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'average_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'average_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'average_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'downloads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'downloads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'downloads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'downloads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'download_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'download_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'download_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'download_link'"
