#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bwfan_smtp_recommend'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'bwfan_is_opted'
wp option delete 'woocommerce_currency'
wp option delete 'bwfan_new_user'
wp option delete '_wffn_onboarding_completed'
wp option delete 'bwfan_ver_1_0'
wp option delete 'bwfan_unique_secret'
wp option delete 'woocommerce_currency_pos'
wp option delete '_bwfan_onboarding_completed'
wp option delete 'ee_mimetype'
wp option delete 'wposes_settings'
wp option delete 'GTranslate'
wp option delete 'bwfan_u_key'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'bwf_crm_field_sort'
wp option delete 'active_sitewide_plugins'
wp option delete 'bwfan_global_settings'
wp option delete 'bwf_is_opted_email'
wp option delete 'bwf_is_opted_data'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'trp_settings'
wp option delete 'woofunnels_plugins_info'
wp option delete 'bwfan_max_automation_completed'
wp option delete 'bwfan_automation_completed_processed'
wp option delete 'bwfan_max_active_automation'
wp option delete 'bwfan_active_automation_processed'
wp option delete 'bwfan_automation_v1'
wp option delete 'bwfan_automation_v2_meta_normalize'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'bwf_global_block_editor_setting'
wp option delete 'bwfan_all_link_saved'
wp option delete 'bwfan_template_links'
wp option delete 'bwfan_db_update'
wp option delete 'bwfan_email_notification_updated'
wp option delete 'bwfan_db'
wp option delete 'wp_mail_smtp'
wp option delete 'easy_wp_smtp'
wp option delete 'fluentmail-settings'
wp option delete 'postman_options'
wp option delete 'bwfan_get_recipes'
wp option delete 'bwfan_rl_exceeded'
wp option delete 'wp_mail_smtp_debug'
wp option delete 'bwfan_wlm_table_created'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'woocommerce_email_base_color'
wp option delete 'bwf_heartbeat_run'
wp option delete 'woocs'
wp option delete '_bwf_last_offsets'
wp option delete '_bwf_offset'
wp option delete '_bwf_contacts_last_offsets'
wp option delete '_bwf_contacts_offset'
wp option delete '_bwf_db_table_list'
wp option delete '_bwf_db_upgrade'
wp option delete '_bwf_order_threshold'
wp option delete '_bwf_contacts_threshold'
wp option delete '_bwf_migrate_contacts_indexing'
wp option delete '_bwf_created_tables'
wp option delete 'bwf_needs_rewrite'
wp option delete 'bwf_gen_config'
wp option delete 'litespeed.conf.cache-exc'
wp option delete 'litespeed.conf.cache-exc_roles'
wp option delete 'litespeed.conf.cache-exc_qs'
wp option delete 'mo_api_authentication_protectedrestapi_route_whitelist'
wp option delete 'WpFastestCacheExclude'
wp option delete 'woofunnels_admin_notices'
wp option delete '_bwf_fb_templates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wf_notification_list_%'"
wp option delete 'bwf_is_opted'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woofunnels_optin_ref'
wp option delete 'woofunnels_track_day'
wp option delete 'woofunnel_hide_update_notice'
wp option delete '_bwf_upgrade_1_9_14'

# Delete Transients
wp transient delete 'bwfan_stop_async_call'
wp transient delete 'bwfan_core_worker_async'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete 'woofunnels_get_modules'
wp transient delete 'update_plugins'
wp transient delete 'fk_license_check_api_call_init'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'bwf_as_run_queue'
wp cron event delete 'fka_clear_duplicate_actions'
wp cron event delete 'bwf_track_usage_scheduled_single'
wp cron event delete 'fk_send_tracking_data'
wp cron event delete 'fk_fb_every_day'
wp cron event delete 'fk_fb_every_4_minute'
wp cron event delete 'woofunnels_optin_success_track_scheduled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bwfan_table_sort_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bwfan_table_sort_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bwfan_table_sort_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bwfan_table_sort_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bwfan_contact_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bwfan_contact_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bwfan_contact_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bwfan_contact_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bwfan_broadcast_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bwfan_broadcast_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bwfan_broadcast_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bwfan_broadcast_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bwfan_welcome_note_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bwfan_welcome_note_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bwfan_welcome_note_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bwfan_welcome_note_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bwfan_header_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bwfan_header_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bwfan_header_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bwfan_header_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bwfan_single_export_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bwfan_single_export_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bwfan_single_export_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bwfan_single_export_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bwfan_contact_columns_v2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bwfan_contact_columns_v2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bwfan_contact_columns_v2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bwfan_contact_columns_v2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bwfan_failed_automations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bwfan_failed_automations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bwfan_failed_automations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bwfan_failed_automations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_offer_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_offer_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_offer_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_offer_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bwfan_automation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bwfan_automation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bwfan_automation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bwfan_automation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bwfan_broadcast_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bwfan_broadcast_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bwfan_broadcast_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bwfan_broadcast_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bwfan_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bwfan_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bwfan_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bwfan_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bwf_in_funnel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bwf_in_funnel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bwf_in_funnel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bwf_in_funnel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_funnel_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_funnel_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_funnel_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_funnel_id'"
