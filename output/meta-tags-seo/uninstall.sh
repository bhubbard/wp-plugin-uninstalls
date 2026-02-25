#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mtg_enabled'
wp option delete 'mtg_default_og_type'
wp option delete 'mtg_default_twitter_card'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mtg_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mtg_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mtg_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mtg_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mtg_meta_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mtg_meta_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mtg_meta_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mtg_meta_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mtg_meta_ogtype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mtg_meta_ogtype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mtg_meta_ogtype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mtg_meta_ogtype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mtg_meta_twitter_card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mtg_meta_twitter_card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mtg_meta_twitter_card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mtg_meta_twitter_card'"
