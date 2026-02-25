#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'embed_bokun_access_key'
wp option delete 'embed_bokun_secret_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_embed_bokun_product_api_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_embed_bokun_product_api_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_embed_bokun_product_api_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_embed_bokun_product_api_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_embed_bokun_bokun_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_embed_bokun_bokun_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_embed_bokun_bokun_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_embed_bokun_bokun_id'"
