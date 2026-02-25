#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'setary_mu_file_version'
wp option delete 'setary_enabled_plugins'

# Delete Transients
wp transient delete '_setary_welcome_screen_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
