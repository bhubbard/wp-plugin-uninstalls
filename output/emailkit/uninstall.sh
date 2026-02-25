#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emailkit_installed'
wp option delete 'emailkit_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shopengine-metform_get_free_templates_banner_dismissed_%'"
wp option delete 'elements_kit_onboard_status'
wp option delete 'met_form_onboard_status'
wp option delete 'shopengine_onboard_status'
wp option delete 'emailkit_option__settings'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_cancelled_order_settings'
wp option delete 'woocommerce_failed_order_settings'
wp option delete 'woocommerce_new_order_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__banner_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_never_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_action'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__stories_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emailkit_template_content_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emailkit_template_content_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emailkit_template_content_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emailkit_template_content_object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emailkit_template_content_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emailkit_template_content_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emailkit_template_content_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emailkit_template_content_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emailkit_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emailkit_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emailkit_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emailkit_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emailkit_template_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emailkit_template_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emailkit_template_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emailkit_template_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emailkit_email_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emailkit_email_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emailkit_email_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emailkit_email_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emailkit_email_preheader'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emailkit_email_preheader'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emailkit_email_preheader'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emailkit_email_preheader'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emailkit_template_initial_content_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emailkit_template_initial_content_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emailkit_template_initial_content_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emailkit_template_initial_content_object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emailkit_template_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emailkit_template_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emailkit_template_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emailkit_template_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emailkit_email_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emailkit_email_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emailkit_email_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emailkit_email_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emailkit_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emailkit_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emailkit_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emailkit_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emailkit_template_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emailkit_template_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emailkit_template_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emailkit_template_title'"
