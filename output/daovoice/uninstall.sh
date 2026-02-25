#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'app_id'
wp option delete 'app_secert'
wp option delete 'is_ensure_user_id'

