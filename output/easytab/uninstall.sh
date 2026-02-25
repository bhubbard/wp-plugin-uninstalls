#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easytab_debug_log'
wp option delete 'easytab_ai'
wp option delete 'easytab_settings'
wp option delete 'easytab_ai_models'
wp option delete 'easytab_pro_third_parties_tabs'
wp option delete 'easytab_chat_gpt_ai_output_preset'
wp option delete 'easytab_claude_ai_output_preset'
wp option delete 'easytab_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easytab_additional_information_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easytab_additional_information_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easytab_additional_information_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easytab_additional_information_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easytab_description_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easytab_description_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easytab_description_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easytab_description_tab'"
