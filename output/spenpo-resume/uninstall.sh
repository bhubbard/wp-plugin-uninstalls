#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spcv_resume_api_require_auth'
wp option delete 'spcv_api_require_auth'
wp option delete 'spcv_db_version'

