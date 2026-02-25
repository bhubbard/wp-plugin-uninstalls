#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dm_db_version'
wp option delete 'dm_type_list'
wp option delete 'dm_sstype_list'
wp option delete 'dm_shotcode_css'

