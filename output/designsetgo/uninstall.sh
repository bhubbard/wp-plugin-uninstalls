#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'designsetgo_llms_txt_physical'
wp option delete 'designsetgo_global_styles'
wp option delete 'designsetgo_settings'
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete 'dsgo_form_submissions_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dsgo_form_attrs_%' OR option_name LIKE '_site_transient_dsgo_form_attrs_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dsgo_has_blocks_%' OR option_name LIKE '_site_transient_dsgo_has_blocks_%'"
wp transient delete 'designsetgo_llms_txt_flush_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_designsetgo_llms_md_%' OR option_name LIKE '_site_transient_designsetgo_llms_md_%'"

# Clear Cron Jobs
wp cron event delete 'designsetgo_cleanup_old_submissions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dsg_form_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dsg_form_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dsg_form_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dsg_form_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dsg_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dsg_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dsg_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dsg_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dsg_submission_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dsg_submission_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dsg_submission_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dsg_submission_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dsg_submission_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dsg_submission_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dsg_submission_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dsg_submission_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dsg_submission_user_agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dsg_submission_user_agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dsg_submission_user_agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dsg_submission_user_agent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dsg_submission_referer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dsg_submission_referer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dsg_submission_referer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dsg_submission_referer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsg_gdpr_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsg_gdpr_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsg_gdpr_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsg_gdpr_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dsg_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dsg_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dsg_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dsg_email_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dsg_email_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dsg_email_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dsg_email_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dsg_email_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dsg_email_sent_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dsg_email_sent_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dsg_email_sent_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dsg_email_sent_date'"
