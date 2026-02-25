#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'j1sa-username'
wp option delete 'j1sa-password'
wp option delete 'j1sa-sender-id'
wp option delete 'j1sa-sender-display'
wp option delete 'j1sa-recipient'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'j1sa-wcs-template-%'"
wp option delete 'j1sa-wcs-template-ocs'

# Delete Transients
wp transient delete 'j1sa-woocommerce_balance'

