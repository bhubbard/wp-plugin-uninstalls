#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'srmb_ayudawp_options'

# Delete Transients
wp transient delete 'srmb_ayudawp_validation_error'

