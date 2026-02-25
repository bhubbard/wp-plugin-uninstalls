#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mealingua_default_language'
wp option delete 'mealingua_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mealingua_translations_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mealingua_translations_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mealingua_translations_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mealingua_translations_post_id'"
