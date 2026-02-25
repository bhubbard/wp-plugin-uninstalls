#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_nfproot_plugins_settings'
wp option delete '_nfp_root_settings'
wp option delete '_nfp_settings'

