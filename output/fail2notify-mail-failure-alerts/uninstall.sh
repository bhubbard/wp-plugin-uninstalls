#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fail2notify_settings'
wp option delete 'fail2notify_logs'

