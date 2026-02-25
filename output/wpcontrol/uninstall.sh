#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gravatar_substitute'
wp option delete 'wpcontrol_settings'
wp option delete 'wpcontrol_current_version'

# Delete Transients
wp transient delete '_wpcontrol_activation_redirect'
wp transient delete 'wpcontrol-admin-notice-activation'

