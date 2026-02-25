#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bspb_plugin_version'
wp option delete 'bspb_settings'
wp option delete 'bspb_plugin_settings'
wp option delete 'bspb_configuration'
wp option delete 'bspb_plugin_configuration'
wp option delete 'bspb_animation'
wp option delete 'bspb_plugin_animation'
wp option delete 'bspb_plugin_activated_blogs'
wp option delete 'bspb_plugin_licenses'
wp option delete 'setting_type'

# Delete Transients
wp transient delete 'bspb_plugin_addons_feed'

