#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'listicle_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'listicle_tease'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'listicle_tease'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'listicle_tease'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'listicle_tease'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'listicle_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'listicle_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'listicle_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'listicle_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'listicle_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'listicle_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'listicle_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'listicle_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'listicle_parentID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'listicle_parentID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'listicle_parentID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'listicle_parentID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'listicle_excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'listicle_excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'listicle_excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'listicle_excerpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'listicle_exceprt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'listicle_exceprt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'listicle_exceprt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'listicle_exceprt'"
