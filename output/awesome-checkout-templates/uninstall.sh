#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wacout_template_enable'
wp option delete 'wacout_select_template'
wp option delete 'wacout_one_page_checkout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wacout_fields_req'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wacout_fields_req'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wacout_fields_req'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wacout_fields_req'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wacout_template_layout_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wacout_template_layout_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wacout_template_layout_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wacout_template_layout_settings'"
