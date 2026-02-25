#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dowp_aicg_settings'

# Delete Transients
wp transient delete 'dowp_options'

