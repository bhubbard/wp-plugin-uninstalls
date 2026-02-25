#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_mint_compliance'
wp option delete '_mint_integration_settings'
wp option delete 'mint_contact_primary_fields'
wp option delete '_mint_recaptcha_settings'
wp option delete '_mrm_general_preference'
wp option delete 'mint_notice_update'
wp option delete 'mrm_contact_columns'
wp option delete '_mrm_email_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_mrm_general_%'"
wp option delete '_mrm_general_footer_watermark'
wp option delete '_mrm_optin_settings'
wp option delete '_mrm_woocommerce_settings'
wp option delete 'mint_bounce_key'
wp option delete 'mail_mint_hide_wc_database_update_notice'
wp option delete 'mail_mint_hide_template_table_update_notice'
wp option delete 'mrm_email_service_settings'
wp option delete 'mail_mint_db_version'
wp option delete 'mail_mint_db_1140_version_updated'
wp option delete 'mail_mint_db_1152_version_updated'
wp option delete 'mail_mint_version'
wp option delete '_mrm_business_basic_info_setting'
wp option delete 'mint_post_image_size'
wp option delete 'mail_mint_capabilities_assigned_to_admin'
wp option delete '_mrm_business_social_info_setting'
wp option delete 'mail_mint_hide_database_update_notice'
wp option delete '_is_show_blackfriday_banner'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_tax_total_display'
wp option delete '_mailmint_form_dismissed'
wp option delete '_mrm_general_user_signup'
wp option delete '_mrm_general_comment_form_subscription'
wp option delete '_mrm_general_unsubscriber_settings'
wp option delete 'mail-mint_allow_tracking'
wp option delete 'mailmint_contacts_added'
wp option delete 'mailmint_install_timestamp'
wp option delete 'mailmint_automation_used'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete '_mint_advanced_settings'
wp option delete '_mrm_general_plugin_data_delete'
wp option delete 'current_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp option delete 'test-telemetry-plugin_allow_tracking'

# Delete Transients
wp transient delete 'wpfnl_community_banner_permanently_hidden'
wp transient delete 'wpfnl_community_banner_temporarily_hidden'
wp transient delete 'mint_hide_checklist'
wp transient delete 'mailmint_show_setup_wizard'
wp transient delete 'mailmint_installing'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'coderex_telemetry_weekly_report'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailmint_email_template_html_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailmint_email_template_html_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailmint_email_template_html_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailmint_email_template_html_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailmint_email_template_json_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailmint_email_template_json_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailmint_email_template_json_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailmint_email_template_json_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailmint_email_template_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailmint_email_template_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailmint_email_template_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailmint_email_template_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpfnl_funnel_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpfnl_funnel_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpfnl_funnel_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpfnl_funnel_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mint_subscribe_permission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mint_subscribe_permission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mint_subscribe_permission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mint_subscribe_permission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
