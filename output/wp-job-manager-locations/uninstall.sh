#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'job_manager_enable_regions_filter'
wp option delete 'resume_manager_enable_regions_filter'
wp option delete 'job_manager_regions_filter'
wp option delete 'resume_manager_regions_filter'

