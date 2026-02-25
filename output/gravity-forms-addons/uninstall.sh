#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gf_addons_settings'
wp option delete 'recently_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_grid'"
wp option delete 'gf_directory_oid'

# Delete Transients
wp transient delete 'kws_gf_activation_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_showadminonly' OR option_name LIKE '_site_transient_%_showadminonly'"

