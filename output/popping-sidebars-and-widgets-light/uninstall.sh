#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'otw_lc_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dnms'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_templates'"
wp option delete 'otw_widget_settings'
wp option delete 'otw_sidebars'
wp option delete 'otw_overlays'
wp option delete 'otw_admin_settings'
wp option delete 'sidebars_widgets'

# Delete Transients
wp transient delete 'otw_upd_plug'
wp transient delete 'update_plugins'

