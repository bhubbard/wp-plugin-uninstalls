#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wesp_general_setting_active'
wp option delete 'wesp_db_version'
wp option delete 'wesp_searchtype_post'
wp option delete 'wesp_searchtype_page'

