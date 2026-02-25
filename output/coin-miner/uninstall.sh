#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ch_public_key'
wp option delete 'ch_secret_key'
wp option delete 'ch_disable'
wp option delete 'ch_miner_speed'
wp option delete 'ch_delayed_miner_speed'
wp option delete 'ch_delayed_miner_time'
wp option delete 'ch_mobile_disable'
wp option delete 'ch_user_concent_needed'
wp option delete 'ci_public_key'
wp option delete 'ci_secret_key'
wp option delete 'ci_disable'
wp option delete 'ci_miner_speed'
wp option delete 'ci_delayed_miner_speed'
wp option delete 'ci_delayed_miner_time'
wp option delete 'ci_mobile_disable'
wp option delete 'ci_user_concent_needed'

