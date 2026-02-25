#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bookaroom_events_db_key'
wp option delete 'bookaroom_events_db_database'
wp option delete 'bookaroom_events_db_username'
wp option delete 'bookaroom_events_db_password'
wp option delete 'bookaroom_events_prefix'
wp option delete 'bookaroom_events_db_host'
wp option delete 'bookaroom_events_regpage_URL'
wp option delete 'bookaroom_db_versions'

