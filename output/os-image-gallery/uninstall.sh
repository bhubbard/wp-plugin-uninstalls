#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'permalink_struture'

# Delete Transients
wp transient delete '_osig_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'osig_slider_custom_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'osig_slider_custom_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'osig_slider_custom_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'osig_slider_custom_meta'"
