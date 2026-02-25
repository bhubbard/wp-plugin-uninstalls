#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nmgr_metabox_notices'
wp option delete 'nmgr_exclude_from_search'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'nmgr_flush_rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'nmgr_settings'
wp option delete 'nmgr_default_pro_fields_values'
wp option delete 'nmgrlite_version'
wp option delete 'nmgr_version'
wp option delete 'nmgr_pagename'
wp option delete 'nmgr_wishlist_pagename'
wp option delete 'nmgr_show_current_version_notices'
wp option delete 'nmgr_dismiss_removed_templates_notice'
wp option delete 'nmgr_license'
wp option delete 'nmgrcf_license'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_task_running' OR option_name LIKE '_site_transient_%_task_running'"
wp transient delete 'nmgr_licenses'
wp transient delete 'nmgr_setup_redirect'

# Clear Cron Jobs
wp cron event delete 'nmgr_delete_guest_wishlists'
wp cron event delete 'nmgr_set_expired_wishlists'
wp cron event delete 'nmgr_gift-registry_SetExpiredWishlists'
wp cron event delete 'nmgr_gift-registry_DeleteGuestWishlists'
wp cron event delete 'nmgr_wishlist_DeleteGuestWishlists'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nmgr_expired'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nmgr_expired'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nmgr_expired'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nmgr_expired'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nmgr_wishlist_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nmgr_wishlist_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nmgr_wishlist_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nmgr_wishlist_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nmgr_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nmgr_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nmgr_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nmgr_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trigger_created_wishlist_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trigger_created_wishlist_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trigger_created_wishlist_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trigger_created_wishlist_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nmgr_guest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nmgr_guest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nmgr_guest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nmgr_guest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nmgr_enable_wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nmgr_enable_wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nmgr_enable_wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nmgr_enable_wishlist'"
