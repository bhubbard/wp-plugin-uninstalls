#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rs_remote_settings'
wp option delete 'rs_remote_db_version'
wp option delete 'rs_settings'
wp option delete 'widget_retreat_site_programs_option'

