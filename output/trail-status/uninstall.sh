#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'otgts2_notes_sc'
wp option delete 'otgts2_notes_widget'
wp option delete 'otgts2_hcaptcha_secret_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
