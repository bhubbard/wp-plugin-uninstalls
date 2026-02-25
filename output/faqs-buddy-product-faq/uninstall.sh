#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wfby_plugin_is_activated'
wp option delete 'wfby_main_menu_name_wg'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfby_faqs_groups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfby_faqs_groups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfby_faqs_groups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfby_faqs_groups'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfby_add_faqs_product_des'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfby_add_faqs_product_des'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfby_add_faqs_product_des'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfby_add_faqs_product_des'"
