#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fswrt_openai_key'
wp option delete 'fswrt_gemini_key'
wp option delete 'fswrt_stability_key'
wp option delete 'fswrt_gemini_model_name'

