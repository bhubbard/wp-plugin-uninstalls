#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gpsr_instructions_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gpsr_instructions_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gpsr_instructions_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gpsr_instructions_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_toggle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_toggle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_toggle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_toggle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gpsr_visibility_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gpsr_visibility_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gpsr_visibility_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gpsr_visibility_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gpsr_instructions_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gpsr_instructions_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gpsr_instructions_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gpsr_instructions_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gpsr_instructions_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gpsr_instructions_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gpsr_instructions_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gpsr_instructions_text'"
