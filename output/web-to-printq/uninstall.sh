#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'printq_designer_version'
wp option delete 'pqd'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pqd_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pqd_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pqd_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pqd_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pqd_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pqd_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pqd_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pqd_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pqd_template_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pqd_template_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pqd_template_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pqd_template_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'add_to_cart_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'add_to_cart_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'add_to_cart_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'add_to_cart_data'"
