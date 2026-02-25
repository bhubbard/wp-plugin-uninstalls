#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lgefep_already_rated'
wp option delete 'lgefep_install_date'
wp option delete 'lgefep_initial_save_version'
wp option delete 'lgefep_review_notice_dismiss'
wp option delete 'LGEFEP_VERSION'
wp option delete 'LGEFEP_TYPE'

