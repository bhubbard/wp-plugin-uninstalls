#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wf-plugin-info-%' OR option_name LIKE '_site_transient_wf-plugin-info-%'"

