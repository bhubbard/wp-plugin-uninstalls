#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'liveSupportiLicense'
wp option delete 'liveSupportiSkin'
wp option delete 'liveSupportiEmail'
wp option delete 'liveSupportiPassword'
wp option delete 'redirectToLiveSupportiAdminPage'

