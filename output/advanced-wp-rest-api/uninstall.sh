#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awpr_user_login_api'
wp option delete 'awpr_post_api'
wp option delete 'awpr_user_api'
wp option delete 'awpr_product_api'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'picture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'picture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'picture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'picture'"
