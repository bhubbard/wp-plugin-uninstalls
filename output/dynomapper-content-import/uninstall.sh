#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%.clientId'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%.clientSecret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%.authBaseUrl'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%.accessToken' OR option_name LIKE '_site_transient_%.accessToken'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%.importState' OR option_name LIKE '_site_transient_%.importState'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%.importFinish' OR option_name LIKE '_site_transient_%.importFinish'"

