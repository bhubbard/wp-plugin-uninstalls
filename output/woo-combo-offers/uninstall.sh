#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wooco_archive_button_add'
wp option delete '_wooco_archive_button_select'
wp option delete '_wooco_archive_button_read'
wp option delete '_wooco_single_button_add'
wp option delete '_wooco_price_sync'
wp option delete '_wooco_bundled_position'
wp option delete '_wooco_hide_bundled'
wp option delete '_wooco_hide_bundled_mini_cart'
wp option delete '_wooco_price_update'
wp option delete '_wooco_search_sku'
wp option delete '_wooco_search_exact'
wp option delete '_wooco_search_sentence'
wp option delete '_wooco_bundle_price_text'
wp option delete '_wooco_change_image'
wp option delete '_wooco_cart_contents_count'
wp option delete '_wooco_hide_bundle_name'
wp option delete '_wooco_bundled_link'
wp option delete '_wooco_search_limit'
wp option delete '_wooco_search_same'
wp option delete '_wooco_price_format'
wp option delete '_wooco_bundled_thumb'
wp option delete '_wooco_bundled_qty'
wp option delete '_wooco_bundled_description'
wp option delete '_wooco_bundled_price'

# Clear Cron Jobs
wp cron event delete 'wooco_cron_jobs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooco_limit_each_min'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooco_limit_each_min'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooco_limit_each_min'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooco_limit_each_min'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooco_limit_each_max'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooco_limit_each_max'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooco_limit_each_max'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooco_limit_each_max'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooco_optional_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooco_optional_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooco_optional_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooco_optional_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooco_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooco_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooco_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooco_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooco_disable_auto_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooco_disable_auto_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooco_disable_auto_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooco_disable_auto_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooco_price_percent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooco_price_percent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooco_price_percent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooco_price_percent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooco_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooco_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooco_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooco_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooco_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooco_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooco_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooco_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooco_update_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooco_update_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooco_update_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooco_update_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooco_limit_each_min_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooco_limit_each_min_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooco_limit_each_min_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooco_limit_each_min_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooco_limit_whole_min'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooco_limit_whole_min'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooco_limit_whole_min'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooco_limit_whole_min'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooco_limit_whole_max'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooco_limit_whole_max'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooco_limit_whole_max'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooco_limit_whole_max'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooco_shipping_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooco_shipping_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooco_shipping_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooco_shipping_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooco_before_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooco_before_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooco_before_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooco_before_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooco_after_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooco_after_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooco_after_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooco_after_text'"
