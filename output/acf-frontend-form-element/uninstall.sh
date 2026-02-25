#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'frontend_admin_dashboard_slug'
wp option delete 'frontend_admin_save_submissions'
wp option delete 'frontend_admin_google_recaptcha_site'
wp option delete 'frontend_admin_google_recaptcha_secret'
wp option delete 'frontend_admin_google_maps_api'
wp option delete 'frontend_admin_hide_by'
wp option delete 'frontend_admin_login_redirect'
wp option delete 'frontend_admin_roles'
wp option delete 'frontend_admin_version'
wp option delete 'fea_legacy_elementor'
wp option delete 'local_avatar'
wp option delete 'filter_media_author'
wp option delete 'acff_stripe_active'
wp option delete 'acff_stripe_live_mode'
wp option delete 'acff_stripe_live_secret_key'
wp option delete 'acff_stripe_test_secret_key'
wp option delete 'acff_paypal_active'
wp option delete 'acff_paypal_client_id'
wp option delete 'acff_paypal_secret'
wp option delete 'acff_paypal_live_mode'
wp option delete 'frontend_admin_submissions_all_time'
wp option delete 'frontend_admin_hide_wp_dashboard'
wp option delete 'fea_csv_export'
wp option delete 'active_sitewide_plugins'
wp option delete 'acf_first_activated_version'
wp option delete 'acf_version'
wp option delete 'acf_escaped_html_notice_dismissed'
wp option delete 'cptui_post_types'
wp option delete 'cptui_taxonomies'
wp option delete 'acf_escaped_html_log'
wp option delete 'acf_will_escape_html_log'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'frontend_admin_recaptcha_site_v2'
wp option delete 'frontend_admin_recaptcha_secret_v2'
wp option delete 'frontend_admin_recaptcha_site_v3'
wp option delete 'frontend_admin_recaptcha_secret_v3'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'frontend_admin_recaptcha_site_%'"
wp option delete 'fea_flush_permalinks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'options_%'"
wp option delete 'fea_main_license_valid'
wp option delete 'fea_pro_trial_dismiss'
wp option delete 'fea_min_submits_trigger'

# Delete Transients
wp transient delete 'acf_deactivated_notice_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_acf_network_upgrade_needed_%' OR option_name LIKE '_site_transient_acf_network_upgrade_needed_%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'acf_update_site_health_data'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frontend_admin_email_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frontend_admin_email_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frontend_admin_email_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frontend_admin_email_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_form_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_form_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_form_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_form_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_admin_area'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_admin_area'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_admin_area'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_admin_area'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acff_payed_submitted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acff_payed_submitted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acff_payed_submitted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acff_payed_submitted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%acff_payed_submitted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%acff_payed_submitted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%acff_payed_submitted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%acff_payed_submitted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acff_payed_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acff_payed_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acff_payed_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acff_payed_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'fea_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'fea_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'fea_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fea_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fea_limit_visibilty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fea_limit_visibilty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fea_limit_visibilty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fea_limit_visibilty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fea_show_for'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fea_show_for'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fea_show_for'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fea_show_for'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fea_show_for_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fea_show_for_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fea_show_for_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fea_show_for_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fea_redirect_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fea_redirect_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fea_redirect_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fea_redirect_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acf_changed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acf_changed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acf_changed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acf_changed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_form_edited'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_form_edited'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_form_edited'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_form_edited'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frontend_admin_manager'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frontend_admin_manager'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frontend_admin_manager'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frontend_admin_manager'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'submitted::%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'submitted::%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'submitted::%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'submitted::%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_form_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_form_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_form_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_form_source'"
