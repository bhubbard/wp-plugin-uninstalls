#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_admin_notice'"
wp option delete 'upgrade_store_options'
wp option delete 'upgrade_store_do_activation_redirect'
wp option delete 'upgrade-store_hide_admin_notice'
wp option delete 'upgrade_store_api_settings'
wp option delete 'upgrade_store_api_attachments'
wp option delete 'upgrade_store_api_woo_email'
wp option delete 'upgrade_store_api_quickview'
wp option delete 'upgrade_store_api_stocks_left'
wp option delete 'upgrade_store_api_banner'
wp option delete 'upgrade_store_api_gallery'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upgrade_store_product_tab_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upgrade_store_product_tab_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upgrade_store_product_tab_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upgrade_store_product_tab_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upgrade_store_product_countdown_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upgrade_store_product_countdown_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upgrade_store_product_countdown_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upgrade_store_product_countdown_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upgrade_store_gallery_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upgrade_store_gallery_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upgrade_store_gallery_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upgrade_store_gallery_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%internalFile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%internalFile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%internalFile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%internalFile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%externalFile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%externalFile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%externalFile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%externalFile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%newWindow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%newWindow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%newWindow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%newWindow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%total_sold_count_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%total_sold_count_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%total_sold_count_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%total_sold_count_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%subtext'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%subtext'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%subtext'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%subtext'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upgrade_store_product_attachment_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upgrade_store_product_attachment_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upgrade_store_product_attachment_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upgrade_store_product_attachment_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upgrade_store_product_attachment_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upgrade_store_product_attachment_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upgrade_store_product_attachment_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upgrade_store_product_attachment_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upgrade_store_product_attachment_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upgrade_store_product_attachment_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upgrade_store_product_attachment_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upgrade_store_product_attachment_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upgrade_store_product_attachment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upgrade_store_product_attachment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upgrade_store_product_attachment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upgrade_store_product_attachment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upgrade_store_product_attachment_internalFile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upgrade_store_product_attachment_internalFile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upgrade_store_product_attachment_internalFile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upgrade_store_product_attachment_internalFile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upgrade_store_product_attachment_externalFile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upgrade_store_product_attachment_externalFile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upgrade_store_product_attachment_externalFile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upgrade_store_product_attachment_externalFile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upgrade_store_product_attachment_newWindow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upgrade_store_product_attachment_newWindow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upgrade_store_product_attachment_newWindow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upgrade_store_product_attachment_newWindow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_url'"
