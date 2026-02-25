#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tron_login_protect_pin'
wp option delete 'tron_login_protect_notify'
wp option delete 'tron_login_options_r'

# Delete Transients
wp transient delete 'tron_login_protect_activation_redirect'

