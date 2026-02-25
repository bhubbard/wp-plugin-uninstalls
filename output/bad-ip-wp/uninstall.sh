#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bad_ip_blocked'
wp option delete 'bad_ip_last_upgrade'

# Delete Transients
wp transient delete 'bad_ip_activated'
wp transient delete 'bad_ip_updated'

