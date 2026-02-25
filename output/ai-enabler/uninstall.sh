#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rgfb_openai_api_key'
wp option delete 'rgfb_openai_model'
wp option delete 'rgfb_stability_key'
wp option delete 'rgfb_fal_key'
wp option delete 'rgfb_leonardo_key'
wp option delete 'rgfb_claude_key'
wp option delete 'rgfb_claude_model'
wp option delete 'rgfb_image_generation_model'
wp option delete 'rgfb_limit_image_requests_by_ip'
wp option delete 'rgfb_image_generation_strength'
wp option delete 'rgfb_video_resolution'
wp option delete 'rgfb_FAL_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'structure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'structure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'structure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'structure'"
