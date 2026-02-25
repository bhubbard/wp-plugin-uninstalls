#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpvolusion'

# Delete Transients
wp transient delete 'volusion_select'
wp transient delete 'volusion_all_p'

