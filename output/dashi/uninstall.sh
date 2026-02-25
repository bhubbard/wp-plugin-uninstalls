#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dashi_do_environmental_check'
wp option delete 'dashi_alert_acl'
wp option delete 'dashi_alert_fileacl'
wp option delete 'dashi_development_diable_field_cache'
wp option delete 'dashi_head_html_is_ok'
wp option delete 'dashi_utility_pages_are_ok'
wp option delete 'dashi_backup_is_ok'
wp option delete 'dashi_server_accesslog_is_ok'
wp option delete 'dashi_no_need_acc_plugin'
wp option delete 'dashi_no_need_dev_plugin'
wp option delete 'dashi_no_need_security_plugin'
wp option delete 'dashi_allow_comments'
wp option delete 'dashi_do_not_heavy_dashboard_check'
wp option delete 'dashi_no_need_sitemap_plugin'
wp option delete 'xmlsf_sitemaps'
wp option delete 'dashi_allow_xmlrpc'
wp option delete 'dashi_no_need_analytics'
wp option delete 'dashi_another_done_sendmail'
wp option delete 'dashi_show_csv_export_dashboard'
wp option delete 'dashi_development_mode'
wp option delete 'dashi_google_map_api_key'
wp option delete 'dashi_enrich_search_result_page'
wp option delete 'dashi_ignore_checked_ontop'
wp option delete 'dashi_activate_pagepart'
wp option delete 'dashi_public_form_done_sendmail'
wp option delete 'dashi_remove_host_at_upload_file'
wp option delete 'dashi_do_eliminate_control_codes'
wp option delete 'dashi_do_eliminate_utf_separation'
wp option delete 'dashi_specify_search_index'
wp option delete 'dashi_sitemap_depth_of_page'
wp option delete 'dashi_sitemap_page_upsidedown'
wp option delete 'dashi_sitemap_home_string'
wp option delete 'dashi_disactivate_author_page'
wp option delete 'dashi_keep_ssl_connection'
wp option delete 'dashi_show_wp_version'
wp option delete 'dashi_auto_update_core'
wp option delete 'dashi_auto_update_theme'
wp option delete 'dashi_auto_update_plugin'
wp option delete 'dashi_auto_update_language'

# Delete Transients
wp transient delete 'dashi_notation_sitemap_exist'
wp transient delete 'dashi_notation_display_error_exist'
wp transient delete 'dashi_notation_xmlrpc_denied'
wp transient delete 'dashi_notation_directory_listing_denied'
wp transient delete 'dashi_notation_http_wpconfig_denied'
wp transient delete 'dashi_notation_check_google_analytics'
wp transient delete 'dashi_expected_custom_field_keys'
wp transient delete 'dashi_errors'

# Clear Cron Jobs
wp cron event delete 'dashi_cron_hook'
wp cron event delete 'dashi_public_form_gc_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mail_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mail_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mail_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mail_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dashi_original_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dashi_original_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dashi_original_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dashi_original_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dashi_pubic_form_pending'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dashi_pubic_form_pending'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dashi_pubic_form_pending'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dashi_pubic_form_pending'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dashi_pubic_form_pending_process'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dashi_pubic_form_pending_process'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dashi_pubic_form_pending_process'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dashi_pubic_form_pending_process'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dashi_redirect_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dashi_redirect_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dashi_redirect_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dashi_redirect_to'"
