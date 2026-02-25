#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sodathemes_typw_post_types'
wp option delete 'sodathemes_typw_taxonomies'
wp option delete 'sodathemes_typw_user_check'
wp option delete 'sodathemes_typw_user_role'
wp option delete 'typw_do_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tax_meta_%'"
wp option delete 'tax_meta_migrated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rnaby_typw_meta_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rnaby_typw_meta_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rnaby_typw_meta_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rnaby_typw_meta_value_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rnaby_typw_meta_tax_youtube_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rnaby_typw_meta_tax_youtube_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rnaby_typw_meta_tax_youtube_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rnaby_typw_meta_tax_youtube_url'"
