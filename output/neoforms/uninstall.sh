#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'neo_global_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'neo_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'neo_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'neo_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'neo_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'neoforms_formdata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'neoforms_formdata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'neoforms_formdata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'neoforms_formdata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'neoforms_form_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'neoforms_form_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'neoforms_form_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'neoforms_form_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'neo_submission_times'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'neo_submission_times'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'neo_submission_times'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'neo_submission_times'"
