#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cft_admin_notices'
wp option delete 'custom_field_template_data'

# Delete Transients
wp transient delete 'cft_admin_notices'

# Clear Cron Jobs
wp cron event delete 'custom_field_template_premium_code_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
