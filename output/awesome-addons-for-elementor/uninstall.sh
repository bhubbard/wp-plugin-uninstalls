#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notice_dissmissed'
wp option delete 'awe_save_settings'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'ad_gravity_form_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color'"
