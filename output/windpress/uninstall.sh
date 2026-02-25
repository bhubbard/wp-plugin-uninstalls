#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'elementor_cpt_support'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_was_wp_org'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_previous_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_previous_was_wp_org'"

