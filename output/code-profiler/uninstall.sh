#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'code-profiler'
wp option delete 'ms_files_rewriting'

# Delete Transients
wp transient delete 'doing_cron'

# Clear Cron Jobs
wp cron event delete 'codeprofiler_wpcron'

