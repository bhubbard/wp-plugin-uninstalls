#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'description_text'
wp option delete 'answer_colour_one_string'
wp option delete 'colour_one'
wp option delete 'enable_post_comments'

