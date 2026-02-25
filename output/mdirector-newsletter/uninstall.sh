#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mdirector_active'
wp option delete 'mdirector-notice'
wp option delete 'mdirector_settings'

# Clear Cron Jobs
wp cron event delete 'md_newsletter_build'

