#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kpftc_chat_enabled'
wp option delete 'kpftc_chat_link'
wp option delete 'kpftc_delay_time'
wp option delete 'kpftc_excluded_pages'
wp option delete 'kpftc_admin_disabled'
wp option delete 'KPFTC_VERSION'

# Delete Transients
wp transient delete 'kpftc-admin-notice-activation'

