#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'better_by_default_simplify_option'
wp option delete 'better_by_default_performance_option'
wp option delete 'better_by_default_miscellaneous_option'
wp option delete 'better_by_default_personalize_option'
wp option delete 'better_by_default_protect_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbd_default_network_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbd_default_network_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbd_default_network_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbd_default_network_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ppp_enabled_preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ppp_enabled_preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ppp_enabled_preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ppp_enabled_preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'better_by_default_critical_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'better_by_default_critical_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'better_by_default_critical_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'better_by_default_critical_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'better_by_default_last_login_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'better_by_default_last_login_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'better_by_default_last_login_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'better_by_default_last_login_on'"
