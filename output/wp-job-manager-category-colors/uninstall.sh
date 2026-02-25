#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'job_manager_job_cat_what_color'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_color'"

