#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ztbtfg_settings'
wp option delete 'ztbtfg_build_count'
wp option delete 'ztbtfg_last_trigger'

# Delete Transients
wp transient delete 'ztbtfg_global_time'

