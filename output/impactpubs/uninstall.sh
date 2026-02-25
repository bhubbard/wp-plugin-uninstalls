#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'impactpubs_daily_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_impactpubs_pubsource'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_impactpubs_pubsource'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_impactpubs_pubsource'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_impactpubs_pubsource'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_impactpubs_identifier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_impactpubs_identifier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_impactpubs_identifier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_impactpubs_identifier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_impactpubs_display-mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_impactpubs_display-mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_impactpubs_display-mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_impactpubs_display-mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_impactpubs_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_impactpubs_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_impactpubs_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_impactpubs_html'"
