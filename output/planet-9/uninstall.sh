#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'planet9_available_languages'
wp option delete 'planet9_openai_api_key'
wp option delete 'planet9_knowledge_base'
wp option delete 'planet9_openai_system_prompt'
wp option delete 'planet9_classic_editor_enabled'

