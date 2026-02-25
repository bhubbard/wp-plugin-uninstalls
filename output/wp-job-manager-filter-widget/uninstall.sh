#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'job_manager_enable_types'
wp option delete 'job_manager_enable_categories'

