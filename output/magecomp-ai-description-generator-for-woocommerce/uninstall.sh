#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'descgpt_api_key'
wp option delete 'descgpt_model'
wp option delete 'descgpt_temperature'
wp option delete 'descgpt_language'
wp option delete 'descgpt_recommendation_prompt'

# Delete Transients
wp transient delete 'settings_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_descgpt_last_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_descgpt_last_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_descgpt_last_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_descgpt_last_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_descgpt_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_descgpt_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_descgpt_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_descgpt_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_descgpt_generated_full'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_descgpt_generated_full'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_descgpt_generated_full'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_descgpt_generated_full'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_descgpt_enable_ai'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_descgpt_enable_ai'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_descgpt_enable_ai'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_descgpt_enable_ai'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_descgpt_generated_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_descgpt_generated_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_descgpt_generated_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_descgpt_generated_desc'"
