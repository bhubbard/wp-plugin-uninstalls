#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sls_settings'

# Delete Transients
wp transient delete 'sls_show_notice'

