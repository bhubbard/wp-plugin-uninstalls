#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ayudawp_acs_settings'

# Delete Transients
wp transient delete 'ayudawp_acs_activation_notice'
wp transient delete 'ayudawp_acs_robots_cache'

