#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfaqcb_settings'
wp option delete 'wpfaqcb_admin_lang'

# Delete Transients
wp transient delete 'wpfaqcb_activation_redirect'

