#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom_redirection_url'
wp option delete 'custom_redirection_enabled'

# Delete Transients
wp transient delete 'acpgc_feedback_message'
wp transient delete 'acpgc_feedback_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acpgc_user_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acpgc_user_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acpgc_user_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acpgc_user_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acpgc_all_questions_answered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acpgc_all_questions_answered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acpgc_all_questions_answered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acpgc_all_questions_answered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acpgc_round_calculated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acpgc_round_calculated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acpgc_round_calculated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acpgc_round_calculated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'include_question_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'include_question_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'include_question_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'include_question_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'league_owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'league_owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'league_owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'league_owner'"
