#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete '_ buddytask_version'
wp option delete '_buddytask_enabled'

# Delete Transients
wp transient delete '_ buddytask_is_new_install'
wp transient delete '_ buddytask_activation_redirect'

