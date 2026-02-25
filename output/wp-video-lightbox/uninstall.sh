#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpvl_prettyphoto_options'
wp option delete 'wpvl_enable_fancyBox'
wp option delete 'wpvl_enable_jquery'
wp option delete 'wpvl_enable_prettyPhoto'
wp option delete 'wpvl_plugin_version'

