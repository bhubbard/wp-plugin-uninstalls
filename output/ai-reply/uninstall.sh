#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'openai_api_key'
wp option delete 'openai_max_tokens'
wp option delete 'openai_temperature'
wp option delete 'openai_model'

