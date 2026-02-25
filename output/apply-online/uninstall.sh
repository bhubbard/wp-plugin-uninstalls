#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aol_admin_notices'
wp option delete 'aol_upload_path'
wp option delete 'aol_allowed_file_types'
wp option delete 'aol_form_max_upload_size'
wp option delete 'aol_form_templates'
wp option delete 'aol_upload_max_size'
wp option delete 'aol_from_email'
wp option delete 'aol_recipients_emails'
wp option delete 'aol_application_success_alert'
wp option delete 'aol_is_progress_bar'
wp option delete 'aol_progress_bar_color'
wp option delete 'aol_name_column_field'
wp option delete 'aol_shortcode_readmore'
wp option delete 'aol_readmore_button'
wp option delete 'aol_application_submit_button'
wp option delete 'aol_required_fields_notice'
wp option delete 'aol_thankyou_page'
wp option delete 'aol_form_heading'
wp option delete 'aol_features_title'
wp option delete 'aol_slug'
wp option delete 'aol_days_for_older_ads_alert'
wp option delete 'aol_application_close_message'
wp option delete 'aol_ad_author_notification'
wp option delete 'aol_success_mail_message'
wp option delete 'aol_success_mail_subject'
wp option delete 'aol_admin_mail_subject'
wp option delete 'aol_not_found_alert'
wp option delete 'aol_ad_filters'
wp option delete 'aol_default_fields'
wp option delete 'aol_ad_types'
wp option delete 'aol_app_statuses'
wp option delete 'aol_custom_statuses'
wp option delete 'aol_submit_button_classes'
wp option delete 'aol_readmore_button_classes'
wp option delete 'aol_multistep_button_classes'
wp option delete 'aol_multistep'
wp option delete 'aol_nonce_is_active'
wp option delete 'aol_default_fields_x'
wp option delete 'aol_show_filter'
wp option delete 'aol_form_classes'
wp option delete 'aol_form_field_classes'
wp option delete 'aol_options'
wp option delete 'aol_application_failure_alert'
wp option delete 'aol_mail_footer'
wp option delete 'aol_version'
wp option delete 'aol_application_message'
wp option delete 'aol_date_format'
wp option delete 'aol_form_consent'
wp option delete 'aol_progress_bar_title'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aol_ad_closing_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aol_ad_closing_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aol_ad_closing_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aol_ad_closing_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aol_ad_close_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aol_ad_close_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aol_ad_close_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aol_ad_close_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recipients_emails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recipients_emails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recipients_emails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recipients_emails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aol_fields_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aol_fields_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aol_fields_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aol_fields_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad_transcript'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad_transcript'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad_transcript'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad_transcript'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aol_ad_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aol_ad_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aol_ad_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aol_ad_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aol_ad_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aol_ad_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aol_ad_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aol_ad_author'"
