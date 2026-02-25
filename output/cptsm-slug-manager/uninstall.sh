#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cptsm_slug_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cptsm_slug_delete_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cptsm_old_slug_%'"

