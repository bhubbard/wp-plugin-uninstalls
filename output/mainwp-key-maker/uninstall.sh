#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mainwp_eir_%' OR option_name LIKE '_site_transient_mainwp_eir_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mainwp_ein_%' OR option_name LIKE '_site_transient_mainwp_ein_%'"

