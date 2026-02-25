#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lknwp_player_rewrite_rules'

# Delete Transients
wp transient delete 'lknwp_radio_tags'

