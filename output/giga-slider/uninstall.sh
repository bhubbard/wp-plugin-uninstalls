#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rcs_slider_settings'
wp option delete 'rcs_upgrade_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rcs_slider_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rcs_slider_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rcs_slider_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rcs_slider_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rcs_slider_slide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rcs_slider_slide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rcs_slider_slide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rcs_slider_slide'"
