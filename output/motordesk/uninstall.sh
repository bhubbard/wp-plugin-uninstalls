#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'motordesk'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_motordesk-i-%' OR option_name LIKE '_site_transient_motordesk-i-%'"
wp transient delete 'motordesk-i'
wp transient delete 'motordesk-is'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_motordesk-v-%' OR option_name LIKE '_site_transient_motordesk-v-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_motordesk-vs-%' OR option_name LIKE '_site_transient_motordesk-vs-%'"
wp transient delete 'motordesk-i-field'
wp transient delete 'motordesk-i-id'
wp transient delete 'motordesk-i-alpha'

