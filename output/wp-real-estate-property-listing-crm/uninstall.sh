#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'api_keys_changed'
wp option delete 'plugin-settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'error-signup-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'log_crm_%'"
wp option delete 'save-search'
wp option delete 'success-unsubscribe'
wp option delete 'fail-unsubscribe'
wp option delete 'md_flexmls_api_key'
wp option delete 'md_flexmls_api_secret'
wp option delete 'md_greatschool_api_key'
wp option delete 'broker_id'
wp option delete 'property_data_feed'
wp option delete 'md_old_plugin-settings'
wp option delete 'MWP_ACTIVATE'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lead-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lead-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lead-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lead-data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facebook-auth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facebook-auth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facebook-auth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facebook-auth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'save-property-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'save-property-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'save-property-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'save-property-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'xout-property-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'xout-property-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'xout-property-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'xout-property-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_num'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_num'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_num'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_num'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_breadcrumb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_breadcrumb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_breadcrumb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_breadcrumb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'save-search-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'save-search-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'save-search-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'save-search-%'"
