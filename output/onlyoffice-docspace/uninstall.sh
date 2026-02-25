#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oodsp_settings'

# Delete Transients
wp transient delete 'oodsp_create_docspace_user_transient'

