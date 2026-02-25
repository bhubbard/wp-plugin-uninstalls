#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'raek_api_key'
wp option delete 'raek_plugin_activated'
wp option delete 'raek_cron_last_update'
wp option delete 'raek_activation_redirect'
wp option delete 'raek_plugin_agreement'
wp option delete 'raek_plugin_setup'
wp option delete 'raek_error'
wp option delete 'raek_plugin_review_prompt_dnd'
wp option delete 'raek_plugin_activation_date'

