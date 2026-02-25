#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mdp_selection_lite_widgets_settings'
wp option delete 'mdp_selection_lite_custom_css_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'mdp_selection_lite_uninstall_settings'

# Delete Transients
wp transient delete 'plugin_id'
wp transient delete 'mdp_selection_lite_widgets_names'

