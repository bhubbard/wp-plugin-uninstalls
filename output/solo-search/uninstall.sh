#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'solo_option_exact_posts'
wp option delete 'solo_option_exact_pages'
wp option delete 'solo_option_single'

