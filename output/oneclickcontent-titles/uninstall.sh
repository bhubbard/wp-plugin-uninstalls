#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'occ_titles_post_types'
wp option delete 'occ_titles_ai_provider'
wp option delete 'occ_titles_openai_api_key'
wp option delete 'occ_titles_google_api_key'
wp option delete 'occ_titles_google_model'
wp option delete 'occ_titles_openai_model'
wp option delete 'occ_titles_assistant_id'

