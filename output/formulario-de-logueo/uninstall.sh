#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'LOWF_options'

# Delete Transients
wp transient delete 'transient'

