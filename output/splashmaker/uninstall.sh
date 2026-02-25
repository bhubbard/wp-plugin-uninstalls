#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disclaimer'
wp option delete 'button_color'
wp option delete 'splash_save_to_local'
wp option delete 'activatation_status'
wp option delete 'splash_script_settings'
wp option delete 'splash_hubspot_settings'
wp option delete 'splash_hubspot_feed'
wp option delete 'splash_setting_fxn'
wp option delete 'jal_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_flush'"
wp option delete 'wpfm-settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gate_form_textarea'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gate_form_textarea'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gate_form_textarea'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gate_form_textarea'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gate_form_input'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gate_form_input'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gate_form_input'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gate_form_input'"
