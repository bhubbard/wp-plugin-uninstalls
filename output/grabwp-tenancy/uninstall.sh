#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grabwp_tenancy_token_error'

# Delete Transients
wp transient delete 'grabwp_tenancy_error'

