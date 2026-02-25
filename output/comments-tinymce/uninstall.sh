#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'comment_tinymce_heading_one'
wp option delete 'comment_tinymce_heading_two'
wp option delete 'comment_tinymce_heading_three'
wp option delete 'comment_tinymce_heading_four'
wp option delete 'comment_tinymce_heading_five'
wp option delete 'comment_tinymce_heading_six'
wp option delete 'comment_tinymce_media_btn'
wp option delete 'comment_tinymce_pre_tag'
wp option delete 'comment_tinymce_blockquote'
wp option delete 'comment_tinymce_code_text_tab'
wp option delete 'comment_tinymce_in_edit_comment'

