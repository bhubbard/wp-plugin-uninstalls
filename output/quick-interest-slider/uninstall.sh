#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qis_messages'
wp option delete 'qis_forex_modified'
wp option delete 'qis_forex_exchange'
wp option delete 'qpp_key'
wp option delete 'qis_track'
wp option delete 'qis_dropdown'
wp option delete 'qis_upgrade'
wp option delete 'qis_settingsone'
wp option delete 'qis_settings1'
wp option delete 'qis_settingstwo'
wp option delete 'qis_settings2'
wp option delete 'qis_settingsthree'
wp option delete 'qis_settings3'
wp option delete 'qis_settingsfour'
wp option delete 'qis_settings4'
wp option delete 'qis_settingsfive'
wp option delete 'qis_settings5'
wp option delete 'qis_formnumber'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qis_settings%'"
wp option delete 'qis_style'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qis_register%'"
wp option delete 'qis_reference'
wp option delete 'qis_select_form'
wp option delete 'qis_register_style'
wp option delete 'qis_progress'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qis_autoresponder%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qis_application%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qis_full_application%'"
wp option delete 'qis_outputtable'
wp option delete 'qis_akismet'
wp option delete 'qis_advanced'
wp option delete 'qis_track_applications'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qis_outputtable%'"

