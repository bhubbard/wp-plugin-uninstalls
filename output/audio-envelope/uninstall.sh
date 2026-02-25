#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'audio_envelope_plugin_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ae_activate_player'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ae_activate_player'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ae_activate_player'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ae_activate_player'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ae_deactivate_player'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ae_deactivate_player'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ae_deactivate_player'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ae_deactivate_player'"
