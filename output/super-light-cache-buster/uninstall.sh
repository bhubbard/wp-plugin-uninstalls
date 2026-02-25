#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slcb_plugin_state'
wp option delete 'slcb_intensity_level'
wp option delete 'slcb_version_name'

