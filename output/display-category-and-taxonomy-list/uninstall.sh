#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dcatl_admin_style_settings'

# Delete Transients
wp transient delete 'dcatl_active_notice'
wp transient delete 'dcatl_dependency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcatl_term_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcatl_term_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcatl_term_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcatl_term_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcatl_install_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcatl_install_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcatl_install_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcatl_install_time'"
