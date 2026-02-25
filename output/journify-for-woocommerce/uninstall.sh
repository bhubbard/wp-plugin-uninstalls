#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'journify_wc_track_purchase'
wp option delete 'journify_wc_track_begin_checkout'
wp option delete 'journify_wc_track_add_to_cart'
wp option delete 'journify_wc_track_view_item'
wp option delete 'journify_wc_track_view_item_list'
wp option delete 'journify_wc_track_search'
wp option delete 'journify_wc_track_add_payment_info'
wp option delete 'journify_wc_track_login'
wp option delete 'journify_wc_track_sign_up'
wp option delete 'journify_wc_write_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'journify_track_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'journify_track_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'journify_track_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'journify_track_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'journify_track_sign_up'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'journify_track_sign_up'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'journify_track_sign_up'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'journify_track_sign_up'"
