#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bb_ai_content_generator_encryption_key'
wp option delete 'bb_ai_content_generator_api_key'
wp option delete 'bb_ai_content_generator_api_usage_stats'

# Delete Transients
wp transient delete 'bb_ai_content_generator_temp_data'

