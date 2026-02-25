#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'expandops_access_code_lite'

# Delete Transients
wp transient delete 'expandops_admin_notices'

