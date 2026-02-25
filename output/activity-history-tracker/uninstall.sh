#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'actihitr_activity_logs'

# Delete Transients
wp transient delete 'actihitr_activity_logs_transient'

