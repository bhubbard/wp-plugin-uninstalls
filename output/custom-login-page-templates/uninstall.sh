#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clpt_logo'
wp option delete 'clpt_bg_image'
wp option delete 'clpt_template'
wp option delete 'clpt_potd'

# Delete Transients
wp transient delete 'clp_potd_url'

