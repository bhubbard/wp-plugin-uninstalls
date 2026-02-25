#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_forms'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_forms_id'"

