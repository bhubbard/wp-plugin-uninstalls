#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'footerize_pre_content'
wp option delete 'footerize_pre_content_posts'
wp option delete 'footerize_pre_content_pages'
wp option delete 'footerize_exclude_from_pre'
wp option delete 'footerize_pos_content'
wp option delete 'footerize_pos_content_posts'
wp option delete 'footerize_pos_content_pages'
wp option delete 'footerize_exclude_from_pos'
wp option delete 'footerize_shortcode_content'

