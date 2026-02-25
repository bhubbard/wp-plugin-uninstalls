#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_tag_and_tracking_id_inserter_google_webmaster'
wp option delete 'easy_tag_and_tracking_id_inserter_google_analytical'
wp option delete 'easy_tag_and_tracking_id_inserter_google_tag_manager'
wp option delete 'easy_tag_and_tracking_id_inserter_webmaster'
wp option delete 'easy_tag_and_tracking_id_inserter_analytical'

