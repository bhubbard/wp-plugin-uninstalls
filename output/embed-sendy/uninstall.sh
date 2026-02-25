#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'esd_settings'
wp option delete 'esd_form_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_esd_subscribers_%' OR option_name LIKE '_site_transient_esd_subscribers_%'"

