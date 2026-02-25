#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'isp-global-settings'
wp option delete 'datacake_redir_page_id'
wp option delete 'datacake_redir_force'
wp option delete 'datacake_api'

# Delete Transients
wp transient delete 'datacake_api_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wda_remote_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wda_remote_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wda_remote_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wda_remote_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wporg_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wporg_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wporg_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wporg_meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isp_product_type_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isp_product_type_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isp_product_type_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isp_product_type_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isp_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isp_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isp_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isp_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isp_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isp_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isp_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isp_number'"
