#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mwscl_submissions_mwscl_keep_data_on_uninstall'
wp option delete 'mwscl_submissions_version'
wp option delete 'mwscl_submissions_db_version'

