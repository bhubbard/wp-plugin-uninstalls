#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpLockMode'
wp option delete 'wpLockUntil'
wp option delete 'wpLockFor'
wp option delete 'wpLockForI'
wp option delete 'wpLockUpdated'
wp option delete 'wpLockUnlockFrom'
wp option delete 'wpLockUnlockTo'
wp option delete 'wpLockLockFrom'
wp option delete 'wpLockLockTo'
wp option delete 'wpLockMessage'
wp option delete 'wpLockDisableFor'
wp option delete 'wpLockDisableForI'
wp option delete 'wpLockEnableFor'
wp option delete 'wpLockEnableForI'
wp option delete 'wpLockAllowedRoles'
wp option delete 'wpLockLogo'

# Clear Cron Jobs
wp cron event delete 'wplock_check_status'

