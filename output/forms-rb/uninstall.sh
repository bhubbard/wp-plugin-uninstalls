#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'rbforms_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rbforms_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rbforms_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rbforms_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rbforms_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rbforms_userip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rbforms_userip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rbforms_userip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rbforms_userip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rbforms_read'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rbforms_read'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rbforms_read'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rbforms_read'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rbforms_rows'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rbforms_rows'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rbforms_rows'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rbforms_rows'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rbforms_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rbforms_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rbforms_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rbforms_options'"
