#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smart_portfolio_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smart_portfolio_client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smart_portfolio_client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smart_portfolio_client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smart_portfolio_client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smart_portfolio_project_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smart_portfolio_project_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smart_portfolio_project_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smart_portfolio_project_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smart_portfolio_project_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smart_portfolio_project_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smart_portfolio_project_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smart_portfolio_project_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smart_portfolio_project_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smart_portfolio_project_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smart_portfolio_project_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smart_portfolio_project_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smart_portfolio_external_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smart_portfolio_external_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smart_portfolio_external_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smart_portfolio_external_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smart_portfolio_open_in_new_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smart_portfolio_open_in_new_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smart_portfolio_open_in_new_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smart_portfolio_open_in_new_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smart_portfolio_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smart_portfolio_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smart_portfolio_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smart_portfolio_gallery'"
