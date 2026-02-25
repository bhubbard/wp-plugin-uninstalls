#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'redirectify_db_version'
wp option delete 'galleryify_db_version'
wp option delete 'redirect_name'
wp option delete 'redirect_url'
wp option delete 'redirect_case'

