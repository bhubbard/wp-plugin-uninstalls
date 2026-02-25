#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wap8-cpt-slug'
wp option delete 'wap8-hct-slug'
wp option delete 'wap8-hct-singular'
wp option delete 'wap8-hct-plural'
wp option delete 'wap8-nhct-slug'
wp option delete 'wap8-nhct-singular'
wp option delete 'wap8-nhct-plural'
wp option delete 'wap8-cpt-singular'
wp option delete 'wap8-cpt-plural'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wap8_portfolio_feature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wap8_portfolio_feature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wap8_portfolio_feature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wap8_portfolio_feature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wap8_client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wap8_client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wap8_client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wap8_client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wap8_project_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wap8_project_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wap8_project_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wap8_project_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wap8_project_url_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wap8_project_url_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wap8_project_url_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wap8_project_url_text'"
