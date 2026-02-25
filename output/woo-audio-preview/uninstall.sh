#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_audio_preview_admin_welcome_options'
wp option delete 'woo_audio_preview_general_options'
wp option delete 'wcap_admin_errors'

# Delete Transients
wp transient delete '_woo_audio_preview_is_new_install'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcap_audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcap_audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcap_audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcap_audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcap_preview_attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcap_preview_attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcap_preview_attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcap_preview_attachment'"
