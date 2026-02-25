#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fm_filter'
wp option delete 'fm_comment_handling'
wp option delete 'fm_api_key'
wp option delete 'fm_api_send_mail'
wp option delete 'fm_api_block_score'
wp option delete 'fm_use_spamhaus'
wp option delete 'fm_use_uribl'
wp option delete 'fm_whitelist'
wp option delete 'fm_blacklist'
wp option delete 'fm_api_key_score'
wp option delete 'fm_db_version'

