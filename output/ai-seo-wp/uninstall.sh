#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpseoai_log'
wp option delete 'wpseoai_debug'
wp option delete 'wpseoai_credit'
wp option delete 'wpseoai_host'
wp option delete 'wpseoai_subscription_id'
wp option delete 'wpseoai_secret'
wp option delete 'wpseoai_llm'
wp option delete 'wpseoai_mode'
wp option delete 'wpseoai_return_host'

