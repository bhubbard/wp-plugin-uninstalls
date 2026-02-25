#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ulm_digest_date'
wp option delete 'ulm_digest_size'
wp option delete 'users-login-monitor_options'

# Delete Transients
wp transient delete 'ulm_users_active'

