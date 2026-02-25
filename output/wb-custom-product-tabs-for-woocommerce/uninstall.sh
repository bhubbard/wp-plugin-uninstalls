#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wb_cptb_default_tab_position'
wp option delete 'wb_cptb_hide_tab_heading'
wp option delete 'wb_cptb_global_tabs_behavior'
wp option delete 'wb_cptb_use_custom_the_content'
wp option delete 'wb_cptb_enable_default_tabs'
wp option delete 'wb_cptb_review_banner_state'
wp option delete 'wb_cptb_review_banner_remind_start'
wp option delete 'wb-cptb-feedback-submitted-at'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wb_tab_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wb_tab_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wb_tab_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wb_tab_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wb_tab_nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wb_tab_nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wb_tab_nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wb_tab_nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wb_tab_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wb_tab_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wb_tab_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wb_tab_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wb_tab_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wb_tab_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wb_tab_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wb_tab_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wb_tab_products_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wb_tab_products_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wb_tab_products_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wb_tab_products_slug'"
