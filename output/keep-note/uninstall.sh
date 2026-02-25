#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'serviceez_settings'
wp option delete 'serviceez_onboarding'

# Delete Transients
wp transient delete 'serviceez_redirect'

# Clear Cron Jobs
wp cron event delete 'serviceez_check_license'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
