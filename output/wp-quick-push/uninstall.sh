#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quickpush_appID'
wp option delete 'quickpush_restApi'
wp option delete 'quickpush_everyone'
wp option delete 'quickpush_pushSegments'
wp option delete 'quickpush_appName'
wp option delete 'quickpush_enableSound'
wp option delete 'quickpush_autoSendTitle'
wp option delete 'quickpush_saveLastMessage'

