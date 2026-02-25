#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'download-monitor-hide-beta-notice'
wp option delete 'download-monitor-rate-time'
wp option delete 'dlm_master_license'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-license'"
wp option delete 'dlm_db_upgraded'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dlm_generate_hash_%'"
wp option delete 'dlm_xsendfile_enabled'
wp option delete 'dlm_allow_x_forwarded_for'
wp option delete 'dlm_hotlink_protection_enabled'
wp option delete 'dlm_current_version'
wp option delete 'dlm_default_template'
wp option delete 'dlm_custom_template'
wp option delete 'dlm_activation_check_default_languages'
wp option delete 'dlm_download_endpoint'
wp option delete 'dlm_check_default_languages'
wp option delete 'dlm_allowed_paths'
wp option delete 'dlm_network_settings'
wp option delete 'dlm_downloads_path'
wp option delete 'dlm_settings_tab_saved'
wp option delete 'dlm_hide_notice-nginx_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dlm_%'"
wp option delete 'dlm_turn_off_file_browser'
wp option delete 'dlm_enable_logging'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dlm_hide_notice-%'"
wp option delete 'dlm_shop_enabled'
wp option delete 'dlm_no_access_modal'
wp option delete 'icl_sitepress_settings'
wp option delete 'dlm_no_access_page'
wp option delete 'dlm_download_endpoint_value'
wp option delete 'dlm_ip_blacklist'
wp option delete 'dlm_user_agent_blacklist'
wp option delete 'dlm_no_access_error'
wp option delete 'dlm_invoice_prefix'
wp option delete 'gateway_paypal_invoice_prefix'
wp option delete 'dlm_logging_ip_type'
wp option delete 'dlm_count_unique_ips'
wp option delete 'dlm_wp_search_enabled'
wp option delete 'dlm_product_errors'
wp option delete 'dlm_rest_api_key'
wp option delete 'dlm_tc_global'
wp option delete 'dlm_tc_content_page'
wp option delete 'dlm_tc_text'

# Delete Transients
wp transient delete 'dlm_extension_json'
wp transient delete 'dlm_pro_extensions'
wp transient delete 'dlm_tables_check'
wp transient delete 'dlm_download_endpoints_rewrite'
wp transient delete 'dlm_allowed_paths_settings'
wp transient delete 'dlm_extension_json_error'
wp transient delete 'dlm_robots_txt'
wp transient delete 'dlm_db_upgrade_offset'
wp transient delete 'dlm_needs_upgrade'
wp transient delete 'dlm_upgrade_type'
wp transient delete 'dlm_templates_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dlm_file_version_ids_%' OR option_name LIKE '_site_transient_dlm_file_version_ids_%'"

# Clear Cron Jobs
wp cron event delete 'dlm_weekly_license'
wp cron event delete 'dlm_monthly_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_download_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_download_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_download_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_download_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_members_only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_members_only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_members_only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_members_only'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redirect_only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redirect_only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redirect_only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redirect_only'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dlm_tc_locked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dlm_tc_locked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dlm_tc_locked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dlm_tc_locked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_filesize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_filesize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_filesize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_filesize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_md5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_md5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_md5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_md5'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sha1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sha1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sha1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sha1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sha256'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sha256'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sha256'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sha256'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crc32'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crc32'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crc32'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crc32'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metaboxhidden_dlm_download'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metaboxhidden_dlm_download'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metaboxhidden_dlm_download'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metaboxhidden_dlm_download'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlm_protected_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlm_protected_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlm_protected_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlm_protected_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlm_download'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlm_download'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlm_download'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlm_download'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloads'"
