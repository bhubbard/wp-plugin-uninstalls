#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpfb_status_%'"
wp option delete 'wpf_taxonomy_rules'
wp option delete 'wpf_import_groups'
wp option delete 'wc_fields_additional'
wp option delete 'thwcfe_sections'
wp option delete 'wpf_options'
wp option delete 'wpf_available_tags'
wp option delete 'wpf_crm_fields'
wp option delete 'wpf_license_check'
wp option delete 'wpf_logs_unseen_errors'
wp option delete 'default_post_edit_rows'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpf_end_auto_login_%'"
wp option delete 'wpf_ac_connection_id'
wp option delete 'wpf_infusionsoft_products'
wp option delete 'wpf_kartra_email_buffer'
wp option delete 'wpf_klaviyo_code_verifier'
wp option delete 'omnisend_account_id'
wp option delete 'wpf_salesforce_objects'
wp option delete 'wpf_salesforce_record_types'
wp option delete 'erp-contact-fields'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'wpf_background_process_process_lock'
wp transient delete 'wpf_keap_backup_key'

# Clear Cron Jobs
wp cron event delete 'clear_auto_login_metadata'
wp cron event delete 'wpf_background_process_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpf-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpf-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpf-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpf-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activecampaign_lists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activecampaign_lists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activecampaign_lists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activecampaign_lists'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpf_ac_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpf_ac_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpf_ac_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpf_ac_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agilecrm_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agilecrm_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agilecrm_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agilecrm_contact_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bento_web_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bento_web_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bento_web_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bento_web_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_web_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_web_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_web_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_web_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpf_customerly_edit_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpf_customerly_edit_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpf_customerly_edit_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpf_customerly_edit_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'drip_inactive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'drip_inactive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'drip_inactive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'drip_inactive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fluentcrm_lists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fluentcrm_lists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fluentcrm_lists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fluentcrm_lists'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailchimp_web_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailchimp_web_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailchimp_web_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailchimp_web_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailchimp_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailchimp_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailchimp_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailchimp_contact_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailerlite_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailerlite_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailerlite_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailerlite_contact_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mautic_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mautic_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mautic_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mautic_contact_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sendinblue_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sendinblue_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sendinblue_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sendinblue_contact_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vtiger_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vtiger_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vtiger_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vtiger_contact_id'"
