#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ipanorama_db_version'
wp option delete 'ipanorama_activated'
wp option delete 'ipanorama_settings'
wp option delete 'default_post_edit_rows'

