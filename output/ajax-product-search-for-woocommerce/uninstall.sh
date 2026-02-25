#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'phoe_s_search_inp_label'
wp option delete 'phoe_s_search_sub_label'
wp option delete 'phoe_s_min_num_of_char'
wp option delete 'phoe_s_max_num_of_result'
wp option delete 'phoe_s_loader_image'
wp option delete 'phoe_s_search_field_placeholder'
wp option delete 'recently_activated'
wp option delete 'max_num_of_result'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_search_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_search_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_search_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_search_ignore_notice'"
