#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'festidtrack_db_version'
wp option delete 'festidtrack_redirect_url'
wp option delete 'festidtrack_redirect_enabled'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_festidtrack_total_calls_%' OR option_name LIKE '_site_transient_festidtrack_total_calls_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_festidtrack_unique_ids_%' OR option_name LIKE '_site_transient_festidtrack_unique_ids_%'"

