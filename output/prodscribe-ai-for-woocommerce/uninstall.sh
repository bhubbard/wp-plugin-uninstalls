#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prodscribe_ai_provider'
wp option delete 'prodscribe_ai_api_key'
wp option delete 'prodscribe_ai_model'
wp option delete 'prodscribe_ai_include_image'
wp option delete 'prodscribe_ai_max_tokens'
wp option delete 'prodscribe_ai_trial_count'

