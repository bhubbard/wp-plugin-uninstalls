#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'merchant_ai_active_status'
wp option delete 'merchant_ai_auto_sync_status'

