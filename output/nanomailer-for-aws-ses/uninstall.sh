#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'expandops_nanomailer'

# Delete Transients
wp transient delete 'expandops_admin_notices'

