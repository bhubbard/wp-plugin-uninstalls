#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pf_json_resp'
wp option delete 'pf_payhip_username'
wp option delete 'pf_affiliate_id'

# Clear Cron Jobs
wp cron event delete 'pf_curl_cron_action'

