#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'macymed_tracker_license_key'
wp option delete 'macymed_tracker_tracking_list_to_track'
wp option delete 'macymed_tracker_tracking_list_personal_data_to_track'
wp option delete 'macymed_tracker_tracking_use_external_redirect_page'
wp option delete 'macymed_tracker_tracking_use_external_javascript_page'
wp option delete 'macymed_tracker_tracking_record_ip'
wp option delete 'macymed_tracker_tracking_record_user_agent'
wp option delete 'macymed_tracker_redirect_page_display_message'
wp option delete 'macymed_tracker_redirect_page_message'
wp option delete 'macymed_tracker_inclusions'
wp option delete 'macymed_tracker_exclusion_domains_relative_path'
wp option delete 'macymed_tracker_exclusion_internal_pages'
wp option delete 'macymed_tracker_exclusion_user_agents'
wp option delete 'macymed_tracker_exclusion_get'
wp option delete 'macymed_tracker_exclusion_domains'
wp option delete 'macymed_tracker_exclusion_protocols'
wp option delete 'macymed_link_tracker_db_version'
wp option delete 'macymed_tracker_redirect_page_delay'
wp option delete 'macymed_tracker_redirect_page_logo_link_tracker'
wp option delete 'macymed_tracker_exclusion_ips'
wp option delete 'macymed_tracker_tracking_refresh'
wp option delete 'macymed_tracker_tracking_record_excluded_ips'
wp option delete 'macymed_tracker_tracking_record_404'

