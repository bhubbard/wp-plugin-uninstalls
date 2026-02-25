#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'saiw_openai_key'
wp option delete 'saiw_pexels_key'
wp option delete 'saiw_pixabay_key'
wp option delete 'saiw_openai_model'
wp option delete 'saiw_language'
wp option delete 'saiw_show_footer'

