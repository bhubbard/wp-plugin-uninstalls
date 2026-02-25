#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ASLQ_INSTALLED'
wp option delete 'ASLQ_VERSION'

# Delete Transients
wp transient delete 'aslq_show_admin_notice'

