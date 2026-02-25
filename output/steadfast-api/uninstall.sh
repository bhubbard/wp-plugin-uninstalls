#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stdf_business_logo'
wp option delete 'stdf_settings_tab_checkbox'
wp option delete 'api_settings_tab_api_secret_key'
wp option delete 'api_settings_tab_api_key'
wp option delete 'stdf_settings_tab_notes'
wp option delete 'stdf_business_name'
wp option delete 'stdf_business_address'
wp option delete 'stdf_business_email'
wp option delete 'stdf_term_condition'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'steadfast_is_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'steadfast_is_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'steadfast_is_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'steadfast_is_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'steadfast_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'steadfast_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'steadfast_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'steadfast_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stdf_delivery_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stdf_delivery_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stdf_delivery_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stdf_delivery_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'steadfast_consignment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'steadfast_consignment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'steadfast_consignment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'steadfast_consignment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stdf_success_ratio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stdf_success_ratio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stdf_success_ratio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stdf_success_ratio'"
