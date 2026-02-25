#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ga_tag_manager_id'
wp option delete 'ga_use_tag_manager'
wp option delete 'ga_tracking_code'
wp option delete 'ga_anonymize_ip'
wp option delete 'track_logged_in'

