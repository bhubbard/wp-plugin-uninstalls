#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ats_options'
wp option delete 'ats_policy_options'
wp option delete 'activate_authsafe'

# Delete Transients
wp transient delete 'your_plugin_redirect'

