#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'QSCM42_enabled_modules'
wp option delete 'QSCM42_header-html'
wp option delete 'QSCM42_footer-html'
wp option delete 'QSCM42_limit_logins_rescue_password'
wp option delete 'QSCM42_limit_logins_max_login_attempts'
wp option delete 'QSCM42_limit_logins_lockout_duration'
wp option delete 'QSCM42_limit_logins_extended_lockout_threshold'
wp option delete 'QSCM42_limit_logins_extended_lockout_duration'
wp option delete 'QSCM42_limit_logins_check_duration'
wp option delete 'QSCM42_maint-html-message'
wp option delete 'QSCM42_maint-status'
wp option delete 'QSCM42_remove-generator'
wp option delete 'QSCM42_remove-rss'
wp option delete 'QSCM42_remove-api'
wp option delete 'QSCM42_remove-includes'
wp option delete 'QSCM42_remove-emojis'
wp option delete 'QSCM42_remove-revisions'
wp option delete 'QSCM42_remove-wpjson'
wp option delete 'QSCM42_remove-xmlrpc'

# Delete Transients
wp transient delete 'QSCM42_unlock_notice'

