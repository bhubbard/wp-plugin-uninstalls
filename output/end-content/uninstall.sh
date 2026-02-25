#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ld_chosen_cats'
wp option delete 'ld_chosen_pages'
wp option delete 'ld_use_pages'
wp option delete 'ld_use_posts'
wp option delete 'ld_code_code'
wp option delete 'ld_code_use_default_css'

