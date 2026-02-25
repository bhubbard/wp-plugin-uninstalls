#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'et_logrocket'
wp option delete 'et_sentry_php'
wp option delete 'et_sentry_js'

