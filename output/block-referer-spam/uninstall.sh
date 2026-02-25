#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ref-blocker-list'
wp option delete 'ref-spam-custom-blocks'
wp option delete 'ref-spam-block-mode'
wp option delete 'ref-spam-pro-key'
wp option delete 'ref-spam-pro-active'
wp option delete 'ref-spam-auto-update'
wp option delete 'ref-blocker-updated'

# Clear Cron Jobs
wp cron event delete 'dailyCronjob'

