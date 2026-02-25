#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpas_setup'
wp option delete 'wpas_plugin_setup'
wp option delete 'wpas_skip_wizard_setup'
wp option delete 'wpas_options'
wp option delete 'wpas_dismiss_free_addon_page'
wp option delete 'wpas_version'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rdn_fetch_%'"
wp option delete 'wpas_htaccess_deny_all_fixed'
wp option delete 'wpas_original_files'
wp option delete 'wpas_default_channels_added'
wp option delete 'wpas_default_ticket_types_added'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'wpas_db_version'
wp option delete 'wpas_setup_email_templates'
wp option delete 'wisdom_example_options_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_details_%'"
wp option delete 'wisdom_last_track_time'
wp option delete 'wisdom_allow_tracking'
wp option delete 'wisdom_notification_times'
wp option delete 'wisdom_block_notice'
wp option delete 'wisdom_collect_email'
wp option delete 'wisdom_admin_emails'
wp option delete 'sm_session_db_version'

# Delete Transients
wp transient delete 'wpas_tickets_counts'
wp transient delete 'wpas_addonsx'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpas_product_term_%' OR option_name LIKE '_site_transient_wpas_product_term_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rn_last_notification_%' OR option_name LIKE '_site_transient_rn_last_notification_%'"
wp transient delete 'wpas_wp_users_count'
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpas_activity_meta_post_%' OR option_name LIKE '_site_transient_wpas_activity_meta_post_%'"

# Clear Cron Jobs
wp cron event delete 'attachments_dir_cleanup_action'
wp cron event delete 'wpas_tickets_cleanup_action'
wp cron event delete 'put_do_weekly_action'
wp cron event delete 'wp_session_database_gc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_is_waiting_client_reply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_is_waiting_client_reply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_is_waiting_client_reply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_is_waiting_client_reply'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpas_reply_was_deleted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpas_reply_was_deleted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpas_reply_was_deleted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpas_reply_was_deleted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpas_close_ticket_prevent_client_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpas_close_ticket_prevent_client_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpas_close_ticket_prevent_client_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpas_close_ticket_prevent_client_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_is_ticket_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_is_ticket_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_is_ticket_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_is_ticket_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ticket_closed_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ticket_closed_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ticket_closed_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ticket_closed_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ticket_closed_on_gmt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ticket_closed_on_gmt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ticket_closed_on_gmt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ticket_closed_on_gmt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_assignee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_assignee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_assignee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_assignee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_last_reply_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_last_reply_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_last_reply_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_last_reply_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_last_reply_date_gmt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_last_reply_date_gmt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_last_reply_date_gmt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_last_reply_date_gmt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_product_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_product_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_product_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_product_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_ttl_calculated_time_spent_on_ticket'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_ttl_calculated_time_spent_on_ticket'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_ttl_calculated_time_spent_on_ticket'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_ttl_calculated_time_spent_on_ticket'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_ttl_adjustments_to_time_spent_on_ticket'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_ttl_adjustments_to_time_spent_on_ticket'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_ttl_adjustments_to_time_spent_on_ticket'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_ttl_adjustments_to_time_spent_on_ticket'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_final_time_spent_on_ticket'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_final_time_spent_on_ticket'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_final_time_spent_on_ticket'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_final_time_spent_on_ticket'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_secondary_assignee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_secondary_assignee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_secondary_assignee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_secondary_assignee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_tertiary_assignee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_tertiary_assignee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_tertiary_assignee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_tertiary_assignee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auto_delete_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auto_delete_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auto_delete_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auto_delete_attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auto_delete_attachments_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auto_delete_attachments_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auto_delete_attachments_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auto_delete_attachments_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpas_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpas_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpas_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpas_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpas_reply_was_edited'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpas_reply_was_edited'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpas_reply_was_edited'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpas_reply_was_edited'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_ttl_replies_by_customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_ttl_replies_by_customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_ttl_replies_by_customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_ttl_replies_by_customer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_ttl_replies_by_agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_ttl_replies_by_agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_ttl_replies_by_agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_ttl_replies_by_agent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_ttl_replies'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_ttl_replies'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_ttl_replies'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_ttl_replies'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_first_addl_interested_party_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_first_addl_interested_party_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_first_addl_interested_party_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_first_addl_interested_party_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_first_addl_interested_party_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_first_addl_interested_party_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_first_addl_interested_party_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_first_addl_interested_party_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_second_addl_interested_party_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_second_addl_interested_party_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_second_addl_interested_party_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_second_addl_interested_party_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_second_addl_interested_party_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_second_addl_interested_party_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_second_addl_interested_party_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_second_addl_interested_party_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_pbtk_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_pbtk_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_pbtk_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_pbtk_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_anonymize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_anonymize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_anonymize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_anonymize'"
