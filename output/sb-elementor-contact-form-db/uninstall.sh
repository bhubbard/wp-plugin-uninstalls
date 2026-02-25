#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fdbgp_google_settings'
wp option delete 'cfef_usage_share_data'
wp option delete 'fme-installDate'
wp option delete 'cfef-installDate'
wp option delete 'cfefp-installDate'
wp option delete 'ccfef-installDate'
wp option delete 'formsdb-installDate'
wp option delete 'oldest_plugin'
wp option delete 'sb-elementor-install-by'
wp option delete 'formsdb_initial_version'
wp option delete 'fdbgp-install-date'
wp option delete 'fdbgp_marketing_dismissed'
wp option delete 'fdbgp_tec_notice_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-install-by'"
wp option delete 'cfkef_enabled_elements'
wp option delete 'cpfm_opt_in_choice_cool_forms'
wp option delete 'fdbgp_google_access_token'
wp option delete 'fdbgp_legacy_save_enabled'
wp option delete 'formdb_initial_version_migration'
wp option delete 'fdbgp-v'
wp option delete 'fdbgp-type'
wp option delete 'fdbgp-installDate'

# Delete Transients
wp transient delete 'fdbgp_forms_posttype_data'
wp transient delete 'fdbgp_forms_sheet_data'

# Clear Cron Jobs
wp cron event delete 'fdbgp_extra_data_update'
wp cron event delete 'cfef_extra_data_update'
wp cron event delete 'cfefp_extra_data_update'
wp cron event delete 'ccfef_extra_data_update'
wp cron event delete 'fme_extra_data_update'
wp cron event delete 'mfe_extra_data_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfkef_form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfkef_form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfkef_form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfkef_form_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfkef_form_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfkef_form_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfkef_form_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfkef_form_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfkef_form_entry_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfkef_form_entry_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfkef_form_entry_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfkef_form_entry_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfkef_form_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfkef_form_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfkef_form_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfkef_form_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfkef_element_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfkef_element_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfkef_element_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfkef_element_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfkef_user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfkef_user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfkef_user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfkef_user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfkef_form_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfkef_form_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfkef_form_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfkef_form_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sb_elem_cfd_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sb_elem_cfd_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sb_elem_cfd_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sb_elem_cfd_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sb_elem_cfd'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sb_elem_cfd'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sb_elem_cfd'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sb_elem_cfd'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sb_elem_cfd_submitted_on_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sb_elem_cfd_submitted_on_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sb_elem_cfd_submitted_on_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sb_elem_cfd_submitted_on_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sb_elem_cfd_read'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sb_elem_cfd_read'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sb_elem_cfd_read'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sb_elem_cfd_read'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfkef_form_action_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfkef_form_action_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfkef_form_action_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfkef_form_action_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfkef_entry_view_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfkef_entry_view_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfkef_entry_view_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfkef_entry_view_status'"
