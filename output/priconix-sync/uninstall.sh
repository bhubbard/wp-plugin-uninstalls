#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'priconix_sync_api_key'
wp option delete 'priconix_sync_publishable_key'
wp option delete 'priconix_sync_success_url'
wp option delete 'priconix_sync_cancel_url'

