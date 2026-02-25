#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiks_keyword_swap_choices'
wp option delete 'aiks_keyword_swap_textfield_data'
wp option delete 'aiks_keyword_swap_openai_endpoint_data'

