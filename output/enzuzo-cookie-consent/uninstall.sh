#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enzuzo_cookie_consent_uuid'
wp option delete 'enzuzo_cookie_consent_enabled'
wp option delete 'enzuzo_cookie_consent_auto_blocking'
wp option delete 'enzuzo_cookie_consent_enable_wp_consent'
wp option delete 'enzuzo_cookie_consent_prefix_code'

