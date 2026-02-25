#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dp_msmom_basic_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_transient_ajax_%' OR option_name LIKE '_site_transient_transient_ajax_%'"

