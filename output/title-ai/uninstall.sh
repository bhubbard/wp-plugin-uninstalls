#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'title_ai_openai_key'
wp option delete 'title_ai_tone'
wp option delete 'title_ai_max_length'

