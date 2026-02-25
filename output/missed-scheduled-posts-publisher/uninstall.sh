#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mspp_review_prompt_removed'
wp option delete 'mspp_review_prompt_delay'

# Delete Transients
wp transient delete 'mspp_review_prompt_delay'

