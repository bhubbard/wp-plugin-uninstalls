#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'enable_cpbwc'
wp option delete 'cpbwc_product_images'
wp option delete 'cpbwc_product_builders'
wp option delete 'cpbwc_textbox_font_family'
wp option delete 'cpbwc_font_family'
wp option delete 'cpbwc_textbox_font_size'
wp option delete 'cpbwc_font_size'
wp option delete 'cpbwc_textbox_shadow'
wp option delete 'cpbwc_shadow'
wp option delete 'cpbwc_textbox_uppercase'
wp option delete 'cpbwc_uppercase'

# Delete Transients
wp transient delete 'cpbwc_activation_redirect'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cpbwc_%' OR option_name LIKE '_site_transient_cpbwc_%'"

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpbwc_builder_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpbwc_builder_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpbwc_builder_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpbwc_builder_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpbwc_builder_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpbwc_builder_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpbwc_builder_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpbwc_builder_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_cpbwc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_cpbwc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_cpbwc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_cpbwc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpbwc_product_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpbwc_product_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpbwc_product_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpbwc_product_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpbwc_product_builders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpbwc_product_builders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpbwc_product_builders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpbwc_product_builders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpbwc_hide_merge_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpbwc_hide_merge_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpbwc_hide_merge_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpbwc_hide_merge_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpbwc_hide_draw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpbwc_hide_draw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpbwc_hide_draw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpbwc_hide_draw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpbwc_hide_preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpbwc_hide_preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpbwc_hide_preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpbwc_hide_preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpbwc_hide_add_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpbwc_hide_add_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpbwc_hide_add_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpbwc_hide_add_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpbwc_hide_add_textbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpbwc_hide_add_textbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpbwc_hide_add_textbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpbwc_hide_add_textbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpbwc_hide_download'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpbwc_hide_download'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpbwc_hide_download'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpbwc_hide_download'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpbwc_hide_reset'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpbwc_hide_reset'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpbwc_hide_reset'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpbwc_hide_reset'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_cpbwc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_cpbwc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_cpbwc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_cpbwc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpbwc_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpbwc_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpbwc_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpbwc_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpbwc_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpbwc_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpbwc_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpbwc_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpbwc_product_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpbwc_product_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpbwc_product_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpbwc_product_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpbwc_product_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpbwc_product_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpbwc_product_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpbwc_product_logo'"
