#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'leadster-script-code'

# Delete Transients
wp transient delete 'leadster_admin_notice_warning'
wp transient delete 'leadster_admin_notice_success'
wp transient delete 'leadster_admin_notice_error'

