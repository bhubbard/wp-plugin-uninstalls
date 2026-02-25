#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recruitology_company_data'
wp option delete 'recruitology_jobspage_postid'
wp option delete 'recruitology_custom_settings'
wp option delete 'recruitology_api_key'

