#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nicescrollr_options'

# Delete Transients
wp transient delete 'nicescrollr_validation_transient'

