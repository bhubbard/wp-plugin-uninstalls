#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'savvme_selected_plan'
wp option delete 'savvme_api_url'
wp option delete 'savvme_api_key'
wp option delete 'savvme_flodesk_api_key'
wp option delete 'savvme_flodesk_workflow_id'
wp option delete 'savvme_flodesk_segment_id'
wp option delete 'savvme_flodesk_segment_name'
wp option delete 'savvme_beehiiv_api_key'
wp option delete 'savvme_beehiiv_publication_id'
wp option delete 'savvme_activecampaign_api_url'
wp option delete 'savvme_activecampaign_api_key'
wp option delete 'savvme_mailerlite_api_token'
wp option delete 'savme_heading_plan'
wp option delete 'savme_content'

# Clear Cron Jobs
wp cron event delete 'savvy_check_reminders'

