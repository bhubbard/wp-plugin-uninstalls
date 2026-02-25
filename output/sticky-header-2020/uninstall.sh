#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sticky-header-2020-last-update'
wp option delete 'sticky-header-2020-styles'
wp option delete 'sticky-header-2020-scripts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_actions_notices'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_adons_notice' OR option_name LIKE '_site_transient_%_adons_notice'"

