#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'RECIPE_META_servings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'RECIPE_META_servings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'RECIPE_META_servings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'RECIPE_META_servings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'RECIPE_META_ingredients'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'RECIPE_META_ingredients'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'RECIPE_META_ingredients'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'RECIPE_META_ingredients'"
