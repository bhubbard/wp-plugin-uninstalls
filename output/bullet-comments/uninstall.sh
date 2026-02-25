#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'is_bullet_comments_verify'
wp option delete 'bullet_comments_style'
wp option delete 'is_bullet_comments_guest_comment_verify'
wp option delete 'bullet_comments_split_text_input_c'

