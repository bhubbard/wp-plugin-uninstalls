#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inline_hcjm_options'

# Delete Transients
wp transient delete 'inline-hcjml-activated'

