#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'softaculous_auth_key'
wp option delete 'wpcentral_version'
wp option delete 'softaculous_connected'
wp option delete 'softaculous_dismiss_notice_date'
wp option delete 'softaculous_promo_time'
wp option delete 'softaculous_allowed_ips'
wp option delete 'softaculous_version'
wp option delete 'softaculous_signonkey'
wp option delete 'softaculous_signonkey_time'

