#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cdaiw_app_id'
wp option delete 'cdaiw_app_secret'
wp option delete 'cleandesk_app_id'
wp option delete 'cleandesk_app_secret'

