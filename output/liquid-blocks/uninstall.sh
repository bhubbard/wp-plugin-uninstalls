#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'liquid_blocks_toggle'
wp option delete 'liquid_blocks_no'
wp option delete 'liquid_blocks_type'
wp option delete 'liquid_blocks_name'
wp option delete 'liquid_blocks_clean'

# Delete Transients
wp transient delete 'liquid_admin_notices'
wp transient delete 'liquid_admin_offer'

