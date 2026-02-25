#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'DOPBSP_db_version_woocommerce'
wp option delete 'DOPBSP_view_pro'
wp option delete 'DOPBSP_db_version'
wp option delete 'DOPBSP_db_version_api_keys'
wp option delete 'DOPBSP_db_version_availability'
wp option delete 'DOPBSP_db_version_availability_no'
wp option delete 'DOPBSP_db_version_availability_price'
wp option delete 'DOPBSP_db_version_calendars'
wp option delete 'DOPBSP_db_version_coupons'
wp option delete 'DOPBSP_db_version_days'
wp option delete 'DOPBSP_db_version_days_available'
wp option delete 'DOPBSP_db_version_days_unavailable'
wp option delete 'DOPBSP_db_version_discounts'
wp option delete 'DOPBSP_db_version_discounts_items'
wp option delete 'DOPBSP_db_version_discounts_items_rules'
wp option delete 'DOPBSP_db_version_emails'
wp option delete 'DOPBSP_db_version_emails_translation'
wp option delete 'DOPBSP_db_version_extras'
wp option delete 'DOPBSP_db_version_extras_groups'
wp option delete 'DOPBSP_db_version_extras_groups_items'
wp option delete 'DOPBSP_db_version_fees'
wp option delete 'DOPBSP_db_version_forms'
wp option delete 'DOPBSP_db_version_forms_fields'
wp option delete 'DOPBSP_db_version_forms_select_options'
wp option delete 'DOPBSP_db_version_languages'
wp option delete 'DOPBSP_db_version_locations'
wp option delete 'DOPBSP_db_version_reservations'
wp option delete 'DOPBSP_db_version_rules'
wp option delete 'DOPBSP_db_version_searches'
wp option delete 'DOPBSP_db_version_settings'
wp option delete 'DOPBSP_db_version_settings_calendar'
wp option delete 'DOPBSP_db_version_settings_notifications'
wp option delete 'DOPBSP_db_version_settings_payment'
wp option delete 'DOPBSP_db_version_settings_search'
wp option delete 'DOPBSP_db_version_smses'
wp option delete 'DOPBSP_db_version_smses_translation'
wp option delete 'DOPBSP_db_version_translation'
wp option delete 'DOPBSP_request_rating'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'DOPBSP_users_permissions_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'DOPBSP_users_permissions_custom_posts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version_database'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_languages'"
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'DOPBSP_db_version_models'
wp option delete 'DOPBSP_users_permissions_administrator'
wp option delete 'DOPBSP_users_permissions_custom_posts_administrator'
wp option delete 'DOPBSP_users_permissions_author'
wp option delete 'DOPBSP_users_permissions_custom_posts_author'
wp option delete 'DOPBSP_users_permissions_contributor'
wp option delete 'DOPBSP_users_permissions_custom_posts_contributor'
wp option delete 'DOPBSP_users_permissions_editor'
wp option delete 'DOPBSP_users_permissions_custom_posts_editor'
wp option delete 'DOPBSP_users_permissions_subscriber'
wp option delete 'DOPBSP_users_permissions_custom_posts_subscriber'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dopbsp_woocommerce_calendar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dopbsp_woocommerce_calendar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dopbsp_woocommerce_calendar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dopbsp_woocommerce_calendar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dopbsp_woocommerce_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dopbsp_woocommerce_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dopbsp_woocommerce_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dopbsp_woocommerce_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dopbsp_woocommerce_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dopbsp_woocommerce_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dopbsp_woocommerce_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dopbsp_woocommerce_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dopbsp_woocommerce_add_to_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dopbsp_woocommerce_add_to_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dopbsp_woocommerce_add_to_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dopbsp_woocommerce_add_to_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'DOPBSP_permissions_calendars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'DOPBSP_permissions_calendars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'DOPBSP_permissions_calendars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'DOPBSP_permissions_calendars'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'DOPBSP_backend_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'DOPBSP_backend_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'DOPBSP_backend_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'DOPBSP_backend_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'DOPBSP_permissions_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'DOPBSP_permissions_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'DOPBSP_permissions_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'DOPBSP_permissions_view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'DOPBSP_permissions_use'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'DOPBSP_permissions_use'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'DOPBSP_permissions_use'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'DOPBSP_permissions_use'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'DOPBSP_permissions_custom_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'DOPBSP_permissions_custom_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'DOPBSP_permissions_custom_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'DOPBSP_permissions_custom_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'DOPBSP_permissions_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'DOPBSP_permissions_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'DOPBSP_permissions_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'DOPBSP_permissions_%'"
