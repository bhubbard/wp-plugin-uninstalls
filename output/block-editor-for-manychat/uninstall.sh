#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmc_fb_page_id'

# Delete Transients
wp transient delete 'wpmc_widget_list'

