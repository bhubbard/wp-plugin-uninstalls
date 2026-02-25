#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_bigin_auth_infos'
wp option delete 'store_all_token_data'
wp option delete 'store_refresh_token_data'
wp option delete 'w3sc_bigin_installed'
wp option delete 'w3sc_bigin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w3sc-cf7-bigin_cf7_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w3sc-cf7-bigin_cf7_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w3sc-cf7-bigin_cf7_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w3sc-cf7-bigin_cf7_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'integration_enable_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'integration_enable_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'integration_enable_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'integration_enable_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w3sc_bigin_fields_repeat_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w3sc_bigin_fields_repeat_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w3sc_bigin_fields_repeat_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w3sc_bigin_fields_repeat_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w3sc-cf7-bigin_module'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w3sc-cf7-bigin_module'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w3sc-cf7-bigin_module'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w3sc-cf7-bigin_module'"
