#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'asyncjs'

# Delete Transients
wp transient delete 'nhp-opts-google-webfonts'
wp transient delete 'nhp-opts-saved'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nhp-opts-errors-%' OR option_name LIKE '_site_transient_nhp-opts-errors-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nhp-opts-warnings-%' OR option_name LIKE '_site_transient_nhp-opts-warnings-%'"

