#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'verbato_project'
wp option delete 'verbato_project_api_url'
wp option delete 'verbato_project_logs'
wp option delete 'verbato_project_id'
wp option delete 'widget_verbato_widget'
wp option delete 'verbato_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_verbato_product_prompt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_verbato_product_prompt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_verbato_product_prompt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_verbato_product_prompt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_verbato_product_prompt_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_verbato_product_prompt_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_verbato_product_prompt_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_verbato_product_prompt_error'"
