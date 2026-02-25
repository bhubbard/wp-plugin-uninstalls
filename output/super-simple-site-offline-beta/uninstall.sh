#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bcSOFF_offline_redirect'
wp option delete 'bcSOFF_site_offline'
wp option delete 'bcSOFF_offline_analytics'
wp option delete 'bcSOFF_offline_header'
wp option delete 'bcSOFF_offline_redirect_url'
wp option delete 'bcSOFF_offline_ip_exempt'
wp option delete 'bcSOFF_offline_background_image'
wp option delete 'bcSOFF_offline_logo'
wp option delete 'bcSOFF_offline_message'
wp option delete 'bcSOFF_offline_theme'
wp option delete 'bcSOFF_offline_css'
wp option delete 'bcSOFF_offline_label'
wp option delete 'bcSOFF_share_data'
wp option delete 'bcSOFF_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bcSOFF_%'"
wp option delete 'bcSOFF_apistring'

# Delete Transients
wp transient delete 'bcSOFF_ask_account_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssso_post_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssso_post_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssso_post_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssso_post_override'"
