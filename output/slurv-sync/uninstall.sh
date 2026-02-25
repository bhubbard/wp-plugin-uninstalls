#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slurv_partner_token'
wp option delete 'slurv_partner_custom_sidebar_bg'
wp option delete 'slurv_partner_custom_link_color'
wp option delete 'slurv_partner_custom_logo'
wp option delete 'slurv_disable_new_user_imports'
wp option delete 'slurv_subdomain'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slurv_login_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slurv_login_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slurv_login_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slurv_login_token'"
