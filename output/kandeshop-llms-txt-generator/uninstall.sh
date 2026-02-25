#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kandlms_options'

# Delete Transients
wp transient delete 'kandlms_admin_notice'

