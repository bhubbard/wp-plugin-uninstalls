#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiko_developer_lite_path'
wp option delete 'aiko_developer_openai_api_key'
wp option delete 'aiko_developer_ai_selection'
wp option delete 'aiko_developer_openai_model'
wp option delete 'aiko_developer_temperature'
wp option delete 'aiko_developer_activated'
wp option delete 'aiko_developer_new_fields_updated'
wp option delete 'aiko_developer_api_key'
wp option delete 'aiko_developer_model'
wp option delete 'aiko_developer_consultant_model'
wp option delete 'aiko_developer_consultant_openai_model'
wp option delete 'aiko_developer_reviewer_model'
wp option delete 'aiko_developer_reviewer_openai_model'
wp option delete 'aiko_developer_consultant_temperature'

# Clear Cron Jobs
wp cron event delete 'aiko_developer_prompt_update_cron_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_output'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_output'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_output'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_output'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_outdated_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_outdated_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_outdated_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_outdated_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_functional_requirements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_functional_requirements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_functional_requirements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_functional_requirements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_functional_requirements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_functional_requirements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_functional_requirements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_functional_requirements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_improvements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_improvements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_improvements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_improvements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_code_not_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_code_not_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_code_not_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_code_not_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_php_output'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_php_output'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_php_output'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_php_output'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_js_output'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_js_output'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_js_output'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_js_output'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_css_output'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_css_output'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_css_output'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_css_output'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_can_generate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_can_generate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_can_generate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_can_generate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiko_developer_rephrased_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiko_developer_rephrased_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiko_developer_rephrased_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiko_developer_rephrased_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_used_model'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_used_model'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_used_model'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_used_model'"
