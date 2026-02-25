#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flippingbook_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_flippingbook_%' OR option_name LIKE '_site_transient_flippingbook_%'"

