#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'fresh_install_assistant_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_welcome_panel'"
