#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'genki_youtube_schedule'
wp option delete 'genki_youtube_skipspam'
wp option delete 'genki_commentlog'

# Clear Cron Jobs
wp cron event delete 'genki_youtube_cron'

