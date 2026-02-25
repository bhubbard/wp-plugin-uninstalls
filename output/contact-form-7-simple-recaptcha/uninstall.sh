#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7sr_notice_017'
wp option delete 'cf7sr_hc_key'
wp option delete 'cf7sr_hc_secret'
wp option delete 'cf7sr_hc_message'
wp option delete 'cf7sr_hc_language'
wp option delete 'cf7sr_key_v3'
wp option delete 'cf7sr_secret_v3'
wp option delete 'cf7sr_score_v3'
wp option delete 'cf7sr_message_v3'
wp option delete 'cf7sr_key'
wp option delete 'cf7sr_secret'
wp option delete 'cf7sr_message'
wp option delete 'cf7sr_language'
wp option delete 'cf7sr_ts_key'
wp option delete 'cf7sr_ts_secret'
wp option delete 'cf7sr_ts_message'
wp option delete 'cf7sr_ts_language'
wp option delete 'cf7sr_spam_stats'

