#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'login_timeout_sessions'

# Delete Transients
wp transient delete 'lts_settings_repaired'

