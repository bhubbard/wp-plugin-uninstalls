#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsx_mcpu_plugin_do_activation_redirect'
wp option delete 'wsx_set_user_accs'

# Delete Transients
wp transient delete 'wsx-mcpu-active-admin-notice'

