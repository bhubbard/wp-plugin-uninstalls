#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dmuk_bo_last_post_number'
wp option delete 'dmuk_bo_last_action_message'
wp option delete 'dmuk_dmuk_bo_last_action_message '
wp option delete 'dmuk_dmuk_bo_last_action_status '
wp option delete 'dmuk_bo_last_action_status'
wp option delete 'dmuk_bo_last_action_count'
wp option delete 'dmuk_bo_feedback'

