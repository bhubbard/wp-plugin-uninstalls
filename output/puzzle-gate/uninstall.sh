#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pgate_options'
wp option delete 'pgate_activation_redirect'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pgate_puzzle_%' OR option_name LIKE '_site_transient_pgate_puzzle_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pgate_failed_logins_%' OR option_name LIKE '_site_transient_pgate_failed_logins_%'"

