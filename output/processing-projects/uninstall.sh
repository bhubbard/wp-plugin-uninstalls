#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pp_meta_box_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pp_project_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pp_project_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pp_project_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pp_project_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pp_iframe_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pp_iframe_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pp_iframe_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pp_iframe_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pp_iframe_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pp_iframe_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pp_iframe_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pp_iframe_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pp_index_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pp_index_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pp_index_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pp_index_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_pp_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_pp_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_pp_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pp_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pp_project_dir'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pp_project_dir'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pp_project_dir'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pp_project_dir'"
