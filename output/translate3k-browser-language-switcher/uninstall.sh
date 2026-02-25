#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_translate_options'
wp option delete 'auto_translate_just_activated'
wp option delete 'auto_translate_should_clear_cookies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_translate3k_content_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_translate3k_content_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_translate3k_content_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_translate3k_content_lang'"
