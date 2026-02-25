#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ipages_flipbook_db_version'
wp option delete 'ipages_flipbook_activated'
wp option delete 'ipages_flipbook_settings'

