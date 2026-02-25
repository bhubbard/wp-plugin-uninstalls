#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_fluentform_pdf_settings'

# Clear Cron Jobs
wp cron event delete 'fluentform_pdf_cleanup_tmp_dir'

