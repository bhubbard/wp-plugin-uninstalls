#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pixelavo_diagnostic_data_agreed'
wp option delete 'pixelavo_diagnostic_data_notice'
wp option delete 'pixelavo_delete_data_fetch_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_bar'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_popup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_timer'"
wp option delete 'pixelavo_settings'
wp option delete 'pixelavo_ai_db_version'
wp option delete 'pixelavo_openssl_notice_dismissed'
wp option delete 'pixelavo_wp_keys_notice_dismissed'
wp option delete 'pixelavo_events'
wp option delete 'pixelavo_edd_events'
wp option delete 'pixelavo_download_files'
wp option delete 'pixelavo_time_on_page'
wp option delete 'pixelavo_page_scroll'
wp option delete 'pixelavo_form_submission'
wp option delete 'pixelavo_other_events'
wp option delete 'pixelavo_wc_view_content'
wp option delete 'pixelavo_wc_purchase'
wp option delete 'pixelavo_do_activation_redirect'
wp option delete 'pixelavo_installed'
wp option delete 'force_update_pixelavo_notice_info'
wp option delete 'pixelavo_pixels_list'
wp option delete 'pixelavo_custom_events'
wp option delete 'pixelavo_other_events_setting_modify'
wp option delete 'pixelavo_setting_modify_124'
wp option delete 'pixelavo_edd_purchase'
wp option delete 'pixelavo_edd_view_content'

# Delete Transients
wp transient delete 'pixelavo-notice-id-pixelavo-diagnostic-notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_htiop_data' OR option_name LIKE '_site_transient_%_htiop_data'"
wp transient delete 'pixelavo_ai_tables_checked'
wp transient delete 'pixelavo_notice_info'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixelavo_user_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixelavo_user_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixelavo_user_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixelavo_user_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixelavo_user_signup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixelavo_user_signup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixelavo_user_signup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixelavo_user_signup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_condition'"
