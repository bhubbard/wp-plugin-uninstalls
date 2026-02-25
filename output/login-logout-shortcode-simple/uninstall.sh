#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'LoginLogoutShortcodeSimple_Plugin_PageRedirect'
wp option delete 'LoginLogoutShortcodeSimple_Plugin_UsersCanRegister'
wp option delete 'LoginLogoutShortcodeSimple_Plugin_CanSeeSpecialData'

