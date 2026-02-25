#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_restricted_zipcodes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_restrict_based_on'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_zone_regions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_error'"

