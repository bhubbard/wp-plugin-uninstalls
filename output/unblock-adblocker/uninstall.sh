#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-options'"
wp option delete 'uaau_error_log'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_error_log'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-review-notify'"
wp option delete 'unblockadblocker-options'
wp option delete 'unblockadblocker-install-date'
wp option delete 'unblockadblocker-review-notify'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-install-date'"

# Delete Transients
wp transient delete 'uaau-activation-admin-notice'

