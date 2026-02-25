#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thwl_page_id'
wp option delete 'thwl_settings'

# Delete Transients
wp transient delete 'thwl_install_checked'

