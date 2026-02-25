#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lazy_bloggers_ai_image_generator_logs'
wp option delete 'lazy_bloggers_ai_image_generator_api_key'
wp option delete 'lazy_bloggers_ai_image_generator_size'
wp option delete 'lazy_bloggers_ai_image_generator_include_title'
wp option delete 'lazy_bloggers_ai_image_generator_include_category'
wp option delete 'lazy_bloggers_ai_image_generator_include_tag'
wp option delete 'lazy_bloggers_ai_image_generator_use_post_content'
wp option delete 'lazy_bloggers_ai_image_generator_style_prompt'
wp option delete 'lazy_bloggers_ai_image_generator_enable_logging'

# Clear Cron Jobs
wp cron event delete 'lazy_bloggers_ai_image_generator_delayed_image_generation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
