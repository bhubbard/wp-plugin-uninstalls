#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'icl_sitepress_settings'
wp option delete 'polylang'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sitemap_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sitemap_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sitemap_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sitemap_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sitemap_url_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sitemap_url_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sitemap_url_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sitemap_url_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sitemap_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sitemap_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sitemap_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sitemap_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sitemap_content_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sitemap_content_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sitemap_content_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sitemap_content_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sitemap_language_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sitemap_language_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sitemap_language_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sitemap_language_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cultxmsi_sitemap_platform'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cultxmsi_sitemap_platform'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cultxmsi_sitemap_platform'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cultxmsi_sitemap_platform'"
