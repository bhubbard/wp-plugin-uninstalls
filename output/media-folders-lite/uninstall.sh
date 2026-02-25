#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mediafolders_option'

# Delete Transients
wp transient delete 'admin-notice'

