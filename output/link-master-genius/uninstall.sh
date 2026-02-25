#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lmgenius_db_version'

# Delete Transients
wp transient delete 'lmgenius_home_url_parsed'

# Clear Cron Jobs
wp cron event delete 'lmgenius_process_link_updates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmgenius_temporary_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmgenius_temporary_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmgenius_temporary_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmgenius_temporary_rules'"
