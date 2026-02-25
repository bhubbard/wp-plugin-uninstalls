#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpas_icon_color_settings'
wp option delete 'bp_share_services_extra'
wp option delete 'bp_share_all_services_disable'
wp option delete 'bp_share_services'
wp option delete 'active_sitewide_plugins'
wp option delete 'bp_share_flag'

# Delete Transients
wp transient delete '_bpshare_is_new_install'

