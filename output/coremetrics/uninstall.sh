#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'coremetrics_userID'
wp option delete 'coremetrics_blogID'
wp option delete 'cm_cookie_domain'
wp option delete 'cm_client_managed'
wp option delete 'cm_data_collection_domain'
wp option delete 'cm_eluminate_location'
wp option delete 'cm_custom_script'
wp option delete 'cm_custom_pageID'
wp option delete 'cm_test_override'
wp option delete 'cm_country_attribute'
wp option delete 'cm_language_attribute'
wp option delete 'cm_track_drafts'
wp option delete 'cm_dismiss_option'
wp option delete 'cm_customEventDB_version'
wp option delete 'cm_eventpoints_option'
wp option delete 'cm_eventpoints_onoff'
wp option delete 'cm_tactical_attributes'
wp option delete 'cm_strategic_attributes'
wp option delete 'cm_attribute_override'

