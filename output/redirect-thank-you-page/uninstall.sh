#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sm_sortable_order'
wp option delete 'wc_settings_enable_redirect'
wp option delete 'wc_settings_thank_you_page'
wp option delete 'wc_settings_thank_you_type'
wp option delete 'wmprty_enable_logging'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wmprty_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wmprty_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wmprty_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wmprty_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wmprty_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wmprty_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wmprty_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wmprty_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wmprty_prd_opt_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wmprty_prd_opt_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wmprty_prd_opt_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wmprty_prd_opt_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wmprty_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wmprty_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wmprty_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wmprty_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wmprty_custom_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wmprty_custom_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wmprty_custom_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wmprty_custom_url'"
