#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jp_customer_form_fields'
wp option delete 'jp_use_custom_theme'
wp option delete 'jp_token_options'
wp option delete 'jp_connected_user'

# Delete Transients
wp transient delete 'jp_form_submitted'
wp transient delete 'jp_trades'
wp transient delete 'jp_states'
wp transient delete 'jp_countries'
wp transient delete 'jp_referrals'

# Clear Cron Jobs
wp cron event delete 'jp_token_refresh_hook'
wp cron event delete 'jp_customer_sync_hook'
wp cron event delete 'jb_customer_sync_hook'

