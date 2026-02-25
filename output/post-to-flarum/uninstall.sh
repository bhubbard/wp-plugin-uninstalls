#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_posttoflarum_activated'
wp option delete '_posttoflarum_create_link'
wp option delete '_posttoflarum_forum_path'
wp option delete '_posttoflarum_token'
wp option delete '_posttoflarum_forum_id'
wp option delete '_posttoflarum_db_version'

