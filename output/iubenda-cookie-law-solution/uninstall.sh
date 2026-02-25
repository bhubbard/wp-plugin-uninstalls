#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'redux_builder_amp'
wp option delete 'mc4wp_integrations'
wp option delete 'iubenda_activation_data'
wp option delete 'status'
wp option delete 'iubenda_consent_forms'
wp option delete 'iubenda_radar_api_configuration'
wp option delete 'iubenda_cookie_law_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'iubenda-code-%'"
wp option delete 'iubenda_cookie_law_solution'
wp option delete 'iubenda_activated_products'
wp option delete 'show_comments_cookies_opt_in'
wp option delete 'iubenda_api_key'
wp option delete 'iubenda_last_radar_run'
wp option delete 'iubenda_privacy_policy_solution'
wp option delete 'iubenda_terms_conditions_solution'
wp option delete 'iubenda_consent_solution'
wp option delete 'iubenda_global_options'
wp option delete 'iubenda_cs_page_configuration'
wp option delete 'iubenda_pp_page_configuration'
wp option delete 'iubenda_quick_generator_response'
wp option delete 'iubenda_tc_page_configuration'
wp option delete 'iubenda_radar_api_response'

# Delete Transients
wp transient delete 'iub_activation_completed'
wp transient delete 'iub_upgrade_completed'

# Clear Cron Jobs
wp cron event delete 'iubenda_verify_cookie_policy_existence'
wp cron event delete 'iubenda_schedule_reload_radar_config'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iub_form_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iub_form_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iub_form_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iub_form_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iub_object_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iub_object_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iub_object_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iub_object_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iub_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iub_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iub_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iub_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iub_form_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iub_form_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iub_form_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iub_form_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iub_form_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iub_form_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iub_form_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iub_form_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iub_form_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iub_form_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iub_form_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iub_form_preferences'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iub_form_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iub_form_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iub_form_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iub_form_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iub_form_legal_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iub_form_legal_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iub_form_legal_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iub_form_legal_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
