#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcboost_wishlist_enable_guest_wishlist'
wp option delete 'wcboost_wishlist_guest_behaviour'
wp option delete 'wcboost_wishlist_guest_message'
wp option delete 'wcboost_wishlist_allow_adding_variations'
wp option delete 'wcboost_wishlist_redirect_after_add'
wp option delete 'wcboost_wishlist_page_id'
wp option delete 'wcboost_wishlist_title_default'
wp option delete 'wcboost_wishlist_auto_remove'
wp option delete 'wcboost_wishlist_page_show_title'
wp option delete 'wcboost_wishlist_clear_guest_wishlist_after_merge'
wp option delete 'wcboost_wishlist_page_show_desc'
wp option delete 'wcboost_wishlist_share'
wp option delete 'wcboost_wishlist_loop_button_position'
wp option delete 'wcboost_wishlist_button_type'
wp option delete 'wcboost_wishlist_exists_item_button_behaviour'
wp option delete 'wcboost_wishlist_ajax_bypass_cache'
wp option delete 'wcboost_wishlist_share_socials'
wp option delete 'wcboost_wishlist_single_button_position'
wp option delete 'wcboost_wishlist_button_style'
wp option delete 'wcboost_wishlist_button_hover_style'
wp option delete 'wcboost_wishlist_button_icon'
wp option delete 'wcboost_wishlist_button_icon_custom'
wp option delete 'wcboost_wishlist_button_text'
wp option delete 'wcboost_wishlist_version'
wp option delete 'wcboost_wishlist_edit_endpoint'
wp option delete 'wcboost_wishlist_rewrite_rules_hash'
wp option delete 'rewrite_rules'
wp option delete 'wcboost_wishlist_merge_guest_wishlist'
wp option delete 'wcboost_wishlist_enable_ajax_add_to_wishlist'
wp option delete 'wcboost_wishlist_table_columns'

# Delete Transients
wp transient delete 'wcboost_wishlist_installing'
wp transient delete 'wcboost_wishlist_auto_deactivate_free_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcboost_wishlist_merge_after_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcboost_wishlist_merge_after_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcboost_wishlist_merge_after_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcboost_wishlist_merge_after_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
