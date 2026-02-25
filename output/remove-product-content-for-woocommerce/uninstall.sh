#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rpcfw_archive_custom_message'
wp option delete 'rpcfw_archive_page_message_text_color'
wp option delete 'rpcfw_archive_page_message_background_color'
wp option delete 'rpcfw_archive_page_message_text_alignment'
wp option delete 'rpcfw_archive_page_message_text_padding'
wp option delete 'rpcfw_archive_page_message_text_font_size'
wp option delete 'rpcfw_archive_custom_message_show_on'
wp option delete 'rpcfw_single_product_options'
wp option delete 'rpcfw_product_archive_pages_options'
wp option delete 'rpcfw_product_page_custom_message'
wp option delete 'rpcfw_product_page_message_text_color'
wp option delete 'rpcfw_product_page_message_background_color'
wp option delete 'rpcfw_product_page_message_text_alignment'
wp option delete 'rpcfw_product_page_message_text_padding'
wp option delete 'rpcfw_product_page_message_text_font_size'
wp option delete 'rpcfw_exclude_categories'
wp option delete 'rpcfw_exclude_tags'
wp option delete 'rpcfw_product_page_custom_message_show_on'
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpcfw_igne_noti'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpcfw_igne_noti'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpcfw_igne_noti'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpcfw_igne_noti'"
