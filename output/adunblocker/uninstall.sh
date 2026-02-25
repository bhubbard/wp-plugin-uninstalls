#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-options'"
wp option delete 'daau_error_log'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_error_log'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-review-notify'"
wp option delete 'adunblocker-install-date'
wp option delete 'adunblocker-review-notify'
wp option delete 'adunblocker-options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-install-date'"

# Delete Transients
wp transient delete 'daau-activation-admin-notice'

