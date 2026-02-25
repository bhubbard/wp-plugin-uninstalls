#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'atcb_global_settings'

# Delete Transients
wp transient delete 'atcb_load_script_once'

