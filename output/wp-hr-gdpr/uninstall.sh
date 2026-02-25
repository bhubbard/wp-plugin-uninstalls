#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'wphrgdpr_consent_quetions'
wp option delete 'wphrgdpr_last_update_post'
wp option delete 'wphrgdpr_consent_contents'
wp option delete 'wphrgdpr_email_templates_data'
wp option delete 'wphrgdpr_email_templates_label'
wp option delete 'wphrgdpr_page_ids'
wp option delete 'wphrgdrplite_page_ids'
wp option delete 'wphrgdrplite_created_posts'
wp option delete 'wphrgdpr_created_posts'
wp option delete 'wphr_email_settings_data-protection-form'
wp option delete 'wphr_email_settings_subject-access-request'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_consent_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_consent_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_consent_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_consent_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_default_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_default_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_default_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_default_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'model_answers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'model_answers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'model_answers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'model_answers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'model_answer_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'model_answer_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'model_answer_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'model_answer_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'model_answers_chk'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'model_answers_chk'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'model_answers_chk'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'model_answers_chk'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'value_checked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'value_checked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'value_checked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'value_checked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wphrgdpr_consent_policy_submit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wphrgdpr_consent_policy_submit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wphrgdpr_consent_policy_submit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wphrgdpr_consent_policy_submit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'field_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'field_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'field_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'field_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'model_default_answers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'model_default_answers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'model_default_answers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'model_default_answers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'model_answers_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'model_answers_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'model_answers_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'model_answers_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'model_answers_default_chk'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'model_answers_default_chk'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'model_answers_default_chk'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'model_answers_default_chk'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'privacy_answer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'privacy_answer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'privacy_answer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'privacy_answer'"
