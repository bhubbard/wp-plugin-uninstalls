#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpic_mainwp_debug'
wp option delete 'ic_mainwp_connected'
wp option delete 'mainwp_wpcompress_extension_activated'

