#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zooza_api_key'
wp option delete 'zooza_client_secret'
wp option delete 'zooza_api_url'
wp option delete 'zooza_registration_page_id'
wp option delete 'zooza_profile_page_id'
wp option delete 'zooza_calendar_page_id'
wp option delete 'zooza_video_page_id'
wp option delete 'zooza_checkout_page_id'
wp option delete 'zooza_map_page_id'
wp option delete 'zooza_calendar_map_id'

