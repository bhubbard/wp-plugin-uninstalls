#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'github_oembed_key'

# Clear Cron Jobs
wp cron event delete 'github_embed_cron'

