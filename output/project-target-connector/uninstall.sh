#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'msgpt_subdomain_name'
wp option delete 'msgpt_access_token'
wp option delete 'msgpt_client_id'
wp option delete 'msgpt_refresh_token'
wp option delete 'msgpt_date_format'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_msgpt_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_msgpt_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_msgpt_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_msgpt_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_msgpt_sale_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_msgpt_sale_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_msgpt_sale_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_msgpt_sale_id'"
