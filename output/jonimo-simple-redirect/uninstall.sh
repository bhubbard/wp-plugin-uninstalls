#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ji_redirect_default'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ji_register_%'"
wp option delete 'ji_redirect_logout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ji_welcome_panel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ji_welcome_panel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ji_welcome_panel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ji_welcome_panel'"
