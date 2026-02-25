#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fluentcrm-global-settings'
wp option delete '_fluentcrm_experimental_settings'
wp option delete '_fc_last_funnel_processor_ran'
wp option delete 'fluentmail-settings'
wp option delete '_fluentcrm_compliance_settings'
wp option delete '_fc_last_funnel_processor'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'fluentcrm_is_sending_emails'
wp option delete 'fluentcrm_is_sending_multi_emails'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-global-settings'"
wp option delete '_fluentcrm_db_version'
wp option delete '_fluent_last_m_run'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'fluentcrm_scheduled_minute_tasks'
wp cron event delete 'fluentcrm_scheduled_hourly_tasks'
wp cron event delete 'fluentcrm_scheduled_weekly_tasks'
wp cron event delete 'fluentcrm_scheduled_five_minute_tasks'
wp cron event delete 'fluentcrm_scheduled_daily_tasks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcrm_has_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcrm_has_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcrm_has_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcrm_has_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_design_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_design_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_design_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_design_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_footer_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_footer_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_footer_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_footer_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_template_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_template_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_template_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_template_config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_email_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_email_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_email_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_email_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
