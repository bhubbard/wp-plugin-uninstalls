#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pressmodo_demo_installed'
wp option delete 'bsr_data'
wp option delete 'bsr_page_size'
wp option delete 'bsr_update_site_url'

# Delete Transients
wp transient delete 'bsr_results'

