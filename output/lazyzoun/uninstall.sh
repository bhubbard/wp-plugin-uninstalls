#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lz_api_public_key'
wp option delete 'lz_api_private_key'
wp option delete 'lz_api_amazon_tld'
wp option delete 'amazon_partner_id'
wp option delete 'lz_debug'
wp option delete 'lz_gatracking'
wp option delete 'amazon_domain'
wp option delete 'lazyzoun'
wp option delete 'lz_logo_widget_title'
wp option delete 'lz_subimgtext'
wp option delete 'lz_presubimgtext'
wp option delete 'lz_aftersubimgtext'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lazyzoun-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lazyzoun-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lazyzoun-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lazyzoun-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lazyzoun-name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lazyzoun-name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lazyzoun-name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lazyzoun-name'"
