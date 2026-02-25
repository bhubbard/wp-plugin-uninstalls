#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'somdn_gen_settings'
wp option delete 'somdn_single_settings'
wp option delete 'somdn_multi_settings'
wp option delete 'somdn_docviewer_settings'
wp option delete 'somdn_pro_track_settings'
wp option delete 'somdn_woo_quickview_settings'
wp option delete 'somdn_owned_settings'
wp option delete 'somdn_debug_settings'
wp option delete 'divi_engine_options'
wp option delete 'divi_fb_license'
wp option delete 'wp_enhanced_licenses'
wp option delete 'somdn_pro_license_key'
wp option delete 'somdn_pro_license_status'
wp option delete 'wpe_incomplete_achievements'
wp option delete 'wpe_complete_achievements'
wp option delete 'somdn_license_migrated_to_wpe'
wp option delete 'somdn_stats_export_settings'
wp option delete 'somdn_memberships_settings'
wp option delete 'woocommerce_file_download_method'

# Clear Cron Jobs
wp cron event delete 'somdn_delete_download_files_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'somdn_dlcount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'somdn_dlcount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'somdn_dlcount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'somdn_dlcount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'somdn_included'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'somdn_included'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'somdn_included'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'somdn_included'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'somdn_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'somdn_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'somdn_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'somdn_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'somdn_user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'somdn_user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'somdn_user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'somdn_user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'somdn_download_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'somdn_download_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'somdn_download_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'somdn_download_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'somdn_membership_include_free_download'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'somdn_membership_include_free_download'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'somdn_membership_include_free_download'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'somdn_membership_include_free_download'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
