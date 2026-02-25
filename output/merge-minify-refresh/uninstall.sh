#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mmr-outputbuffering'
wp option delete 'mmr-nomergecss'
wp option delete 'mmr-nocheckcssimports'
wp option delete 'mmr-nocheckjsmodules'
wp option delete 'mmr-nomergejs'
wp option delete 'mmr-nocssmin'
wp option delete 'mmr-nojsmin'
wp option delete 'mmr-http2push'
wp option delete 'mmr-http2push-css'
wp option delete 'mmr-http2push-js'
wp option delete 'mmr-gzip'
wp option delete 'mmr-ignore'
wp option delete 'mmr-global-styles'
wp option delete 'mmr-merge-inline'

# Clear Cron Jobs
wp cron event delete 'mmr_minify_check'
wp cron event delete 'mmr_minify'

