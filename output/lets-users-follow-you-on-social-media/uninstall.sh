#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pcpl_welcome'
wp option delete 'pcpl_follow_config'
wp option delete 'pcpl_follow_enabled'

# Delete Transients
wp transient delete 'pcpl_activation_redirect_transient'

