#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%dismiss'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%content'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%exclude'"

