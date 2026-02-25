#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtportfolio_bf_2021'
wp option delete 'rtpf_ny_2025'
wp option delete 'rtport_plugin_activation_time'
wp option delete 'rtport_spare_me'
wp option delete 'rtport_remind_me'
wp option delete 'rtport_rated'
wp option delete 'rtport_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tools'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tools'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tools'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tools'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'completed_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'completed_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'completed_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'completed_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'short_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'short_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'short_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'short_description'"
