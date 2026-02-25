#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WPREQUAL_VERSION'
wp option delete 'wprequal_amortize_principal_color'
wp option delete 'wprequal_amortize_principal_border'
wp option delete 'wprequal_amortize_principal_label'
wp option delete 'wprequal_amortize_interest_color'
wp option delete 'wprequal_amortize_interest_border'
wp option delete 'wprequal_amortize_interest_label'
wp option delete 'wprequal_currency'
wp option delete 'wprequal_currency_position'
wp option delete 'wprequal_focus_calc_background_color'
wp option delete 'wprequal_get_quote_button_color'
wp option delete 'wprequal_get_quote_button_font_color'
wp option delete 'wprequal_get_quote_button_hover_color'
wp option delete 'wprequal_get_quote_button_hover_font_color'
wp option delete 'wprequal_term_type'
wp option delete 'wprequal_from_email'
wp option delete 'wprequal_email'
wp option delete 'wprequal_bcc_email'
wp option delete 'wprequal_sms_carrier_gateway'
wp option delete 'wprequal_access_token'
wp option delete 'wprequal_default_to_email'
wp option delete 'wprequal_get_quote_confirmation'
wp option delete 'wprequal_insurance_label'
wp option delete 'wprequal_tax_label'
wp option delete 'wprequal_term_label'
wp option delete 'wprequal_rate_label'
wp option delete 'wprequal_price_label'
wp option delete 'wprequal_down_payment_label'
wp option delete 'wprequal_url_referrer_param'
wp option delete 'wprequal_activation_redirect'
wp option delete 'wprequal_fa_kits_url'
wp option delete 'wprequal_popup_post_id'
wp option delete 'wprequal_between'
wp option delete 'wprequal_force'
wp option delete 'wprequal_delay'
wp option delete 'wprequal_fa_pro'
wp option delete 'wprequal_version_7_loaded'
wp option delete 'wprequal_forms_loaded'
wp option delete 'wprequal_back_link_text'
wp option delete 'wprequal_get_quote_post_id'
wp option delete 'wprequal_webhook_url'
wp option delete 'wprequal_focus_msg'
wp option delete 'wprequal_get_quote_button_text'
wp option delete 'wprequal_get_quote_cta'
wp option delete 'wprequal_term_suffix'
wp option delete 'wprequal_amortize_label'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inputs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inputs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inputs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inputs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'field_labels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'field_labels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'field_labels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'field_labels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'input'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'input'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'input'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'input'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'back_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'back_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'back_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'back_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slides'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slides'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slides'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slides'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpq_survey_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpq_survey_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpq_survey_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpq_survey_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'styles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprequal_lead'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprequal_lead'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprequal_lead'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprequal_lead'"
