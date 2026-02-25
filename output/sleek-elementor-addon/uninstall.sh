#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sleek_ea_widgets_settings'
wp option delete 'sleek_ea_enabled_widgets'
wp option delete 'sleek_ea_plugin_activated'
wp option delete 'sleek_ea_widgets_data'

# Delete Transients
wp transient delete 'sleek_ea_elementor_notice'
wp transient delete 'sleek_ea_widget_transient'

