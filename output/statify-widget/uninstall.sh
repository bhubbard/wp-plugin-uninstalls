#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%0' OR option_name LIKE '_site_transient_%0'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_statify_targets_%' OR option_name LIKE '_site_transient_statify_targets_%'"

