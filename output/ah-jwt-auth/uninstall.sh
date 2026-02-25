#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ahjwtauth-private-secret'
wp option delete 'ahjwtauth-jwks-url'
wp option delete 'ahjwtauth-jwt-header'
wp option delete 'ahjwtauth-user-role'

# Delete Transients
wp transient delete 'ahjwtauth_jwks_json'

# Clear Cron Jobs
wp cron event delete 'ahjwtauth_refresh_jwks'

