#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp2p_tab'
wp option delete 'wp2p_settings'
wp option delete 'wp2p_tab_saved'
wp option delete 'wp2p_settings_saved'
wp option delete 'wp2p_published'
wp option delete 'wp2p_pref'

