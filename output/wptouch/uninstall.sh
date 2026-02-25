#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wptouch_customizer_options_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wptouch_customizer_initialized_%'"
wp option delete 'wptouch_custom_post_types'
wp option delete 'wptouch_multisite_active'
wp option delete 'wptouch-disable-free-newsletter-notice'
wp option delete '_wptouch-disable-theme-incompat-notice'
wp option delete '_wptouch-disable-plugin-incompat-notice'
wp option delete 'bnc_iphone_pages'
wp option delete 'update_plugins'
wp option delete 'wptouch_menus_initialized'
wp option delete 'active_sitewide_plugins'
wp option delete 'wptouch_custom_taxonomies'

# Delete Transients
wp transient delete 'wptouch_license_upgrade_available'
wp transient delete '_wptouch_available_cloud_addons'
wp transient delete '_wptouch_available_cloud_themes'
wp transient delete '_wptouch_language_info'
wp transient delete 'update_plugins'
wp transient delete '_wptouch_bncid_latest_version'
wp transient delete 'wptouch_update_info'
wp transient delete 'wptouch_multisite_site_info'

# Clear Cron Jobs
wp cron event delete 'wptouch_cron_backup_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mobile_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mobile_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mobile_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mobile_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wptouch_sc_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wptouch_sc_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wptouch_sc_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wptouch_sc_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wptouch_sc_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wptouch_sc_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wptouch_sc_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wptouch_sc_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wptouch_sc_styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wptouch_sc_styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wptouch_sc_styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wptouch_sc_styles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wptouch_sc_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wptouch_sc_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wptouch_sc_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wptouch_sc_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wptouch_pro_menu_item_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wptouch_pro_menu_item_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wptouch_pro_menu_item_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wptouch_pro_menu_item_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wptouch_pro_menu_item_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wptouch_pro_menu_item_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wptouch_pro_menu_item_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wptouch_pro_menu_item_disabled'"
