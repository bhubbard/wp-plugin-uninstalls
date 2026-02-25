#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'creomicro_enable_comments'
wp option delete 'creomicro_microposts_page_id'
wp option delete 'creomicro_excerpt_chars'
wp option delete 'creomicro_per_page'
wp option delete 'creomicro_single_template_choice'

