#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wilapp_options'

# Delete Transients
wp transient delete 'wilapp_query_professional'

