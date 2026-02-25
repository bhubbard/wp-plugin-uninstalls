#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'petitioner_plugin_version'
wp option delete 'petitioner_primary_color'
wp option delete 'petitioner_dark_color'
wp option delete 'petitioner_grey_color'
wp option delete 'petitioner_custom_css'
wp option delete 'petitioner_show_goal'
wp option delete 'petitioner_show_title'
wp option delete 'petitioner_show_letter'
wp option delete 'petitioner_enable_akismet'
wp option delete 'wordpress_api_key'
wp option delete 'petitioner_enable_recaptcha'
wp option delete 'petitioner_enable_hcaptcha'
wp option delete 'petitioner_enable_turnstile'
wp option delete 'petitioner_recaptcha_site_key'
wp option delete 'petitioner_hcaptcha_site_key'
wp option delete 'petitioner_turnstile_site_key'
wp option delete 'petitioner_label_overrides'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_cc_emails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_cc_emails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_cc_emails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_cc_emails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_letter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_letter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_letter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_letter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_send_to_representative'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_send_to_representative'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_send_to_representative'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_send_to_representative'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_from_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_from_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_from_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_from_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_from_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_from_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_from_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_from_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_override_ty_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_override_ty_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_override_ty_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_override_ty_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_ty_email_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_ty_email_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_ty_email_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_ty_email_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_ty_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_ty_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_ty_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_ty_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_goal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_goal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_goal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_goal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_show_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_show_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_show_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_show_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_add_legal_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_add_legal_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_add_legal_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_add_legal_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_legal_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_legal_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_legal_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_legal_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_add_consent_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_add_consent_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_add_consent_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_add_consent_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_consent_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_consent_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_consent_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_consent_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_add_honeypot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_add_honeypot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_add_honeypot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_add_honeypot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_form_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_form_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_form_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_form_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_field_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_field_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_field_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_field_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_petitioner_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_petitioner_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_petitioner_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_petitioner_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_require_approval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_require_approval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_require_approval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_require_approval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_approval_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_approval_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_approval_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_approval_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petitioner_hide_last_names'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petitioner_hide_last_names'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petitioner_hide_last_names'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petitioner_hide_last_names'"
