#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'srlr_role_redirects'

# Delete Transients
wp transient delete 'srlr_activation_notice'
wp transient delete 'srlr_settings_saved'

