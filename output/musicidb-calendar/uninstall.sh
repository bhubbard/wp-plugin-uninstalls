#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'musicidb_options'

# Delete Transients
wp transient delete 'musicidb_integration_entity_responses'

