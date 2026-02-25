#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alma_previous_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice'"
wp option delete 'alma_version'
wp option delete 'alma_migration_ongoing'
wp option delete 'woocommerce_alma_settings'
wp option delete 'alma_warnings_handled'
wp option delete 'woocommerce_checkout_phone_field'
wp option delete 'alma_soc_ongoing'
wp option delete 'wc_alma_settings'

# Delete Transients
wp transient delete 'alma-admin-soc-panel'

