#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'captcha_at_plugin'
wp option delete 'captcha_at_fragprotect'
wp option delete 'captcha_at_proxy_enabled'
wp option delete 'captcha_at_public_key'
wp option delete 'captcha_at_host'
wp option delete 'captcha_at_rest_key'
wp option delete 'captcha_at_proxy_sdkjs_content'
wp option delete 'captcha_at_proxy_sdkjs_updated_at'
wp option delete 'captcha_at_errors_catched'
wp option delete 'captcha_at_version_sdk'
wp option delete 'captcha_at_update_available'
wp option delete 'captcha_at_update_version'
wp option delete 'captcha_at_update_url'

# Delete Transients
wp transient delete 'captcha-at-notice-activation'

# Clear Cron Jobs
wp cron event delete 'captcha_at_sched_sdk_version'

