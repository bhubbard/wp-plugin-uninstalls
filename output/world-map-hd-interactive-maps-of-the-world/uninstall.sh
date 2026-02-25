#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%InputField1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%InputField2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%InputField3'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%InputField4'"

