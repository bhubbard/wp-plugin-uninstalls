#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_kbttc_settings_notice'
wp option delete '_kbttc_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kbttc_term_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kbttc_term_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kbttc_term_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kbttc_term_color'"
