#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vi_title_text'
wp option delete 'vi_title_check'
wp option delete 'vi_excerpt_text'
wp option delete 'vi_excerpt_check'
wp option delete 'vi_content_text'
wp option delete 'vi_content_check'

