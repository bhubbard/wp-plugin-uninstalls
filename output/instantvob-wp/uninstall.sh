#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'instantvob_api_url'
wp option delete 'instantvob_api_key'
wp option delete 'instantvob_notification_email'
wp option delete 'instantvob_cf_turnstile_secret'
wp option delete 'instantvob_cf_turnstile_sitekey'
wp option delete 'instantvob_show_branding'

