#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'allfactors_hostname'

# Delete Transients
wp transient delete 'allfactors_script'
wp transient delete 'allfactors_update'

