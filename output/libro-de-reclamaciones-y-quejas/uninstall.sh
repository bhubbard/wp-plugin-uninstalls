#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'libro_setting_page'
wp option delete 'libro_setting_url'
wp option delete 'rt_libro_db_version'

