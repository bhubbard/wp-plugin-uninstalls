#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aialge_access_token'
wp option delete 'aialge_custom_prompt'
wp option delete 'aialge_username'
wp option delete 'aialge_password'
wp option delete 'aialge_auto_approve'
wp option delete 'aialge_passord'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_proposed_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_proposed_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_proposed_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_proposed_alt'"
