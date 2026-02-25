#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flywp_migrate_temp_dir'
wp option delete 'flywp_migration_key'

# Delete Transients
wp transient delete 'flywp_initial_resume_interval'

