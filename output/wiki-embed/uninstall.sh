#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wikiembed_options'
wp option delete 'wikiembeds'
wp option delete 'wiki_embed_white_list'
wp option delete 'wikiembed_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wiki_embed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wiki_embed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wiki_embed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wiki_embed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wikiembed_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wikiembed_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wikiembed_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wikiembed_expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wikiembed_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wikiembed_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wikiembed_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wikiembed_content'"
