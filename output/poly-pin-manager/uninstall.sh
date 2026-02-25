#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'poly_pin_enabled_types'
wp option delete 'poly_pin_quick_pinning'
wp option delete 'poly_pin_enable_edit_plugins_themes'
wp option delete 'poly_pin_terms'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'poly_pin_%'"
wp option delete 'poly_pin_quick_access_menu'
wp option delete 'poly_pin_plugins'
wp option delete 'poly_pin_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_note'"
