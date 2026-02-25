#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hl_userLogin_Header'
wp option delete 'hl_userEmail_Header'
wp option delete 'hl_userFirstname_Header'
wp option delete 'hl_userLastname_Header'
wp option delete 'hl_userNicename_Header'
wp option delete 'hl_userDisplayname_Header'
wp option delete 'hl_authHeader'
wp option delete 'hl_logoutURL'
wp option delete 'hl_settingsSaved'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hl_createNewUser%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hl_defaultRole%'"
wp option delete 'hl_createNewUser'
wp option delete 'hl_defaultRole'

