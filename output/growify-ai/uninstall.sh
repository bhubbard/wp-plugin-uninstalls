#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'growify_api_key'
wp option delete 'growify_enable_admin_tracking'
wp option delete 'growify_api_version'

# Delete Transients
wp transient delete 'growify_ai_activation_redirect'

