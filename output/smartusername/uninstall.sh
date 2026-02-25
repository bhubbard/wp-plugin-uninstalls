#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_smartusername_username_changed_%' OR option_name LIKE '_site_transient_smartusername_username_changed_%'"

