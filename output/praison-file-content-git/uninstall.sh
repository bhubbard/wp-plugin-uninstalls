#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'praisonpress_github_token'
wp option delete 'praisonpress_github_repo'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_praison_export_%' OR option_name LIKE '_site_transient_praison_export_%'"

# Clear Cron Jobs
wp cron event delete 'praison_background_export'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_praison_file_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_praison_file_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_praison_file_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_praison_file_path'"
