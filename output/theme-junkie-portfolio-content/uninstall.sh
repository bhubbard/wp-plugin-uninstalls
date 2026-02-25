#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tj_image_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tj_image_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tj_image_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tj_image_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tj_portfolio_short_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tj_portfolio_short_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tj_portfolio_short_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tj_portfolio_short_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tj_portfolio_client'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tj_portfolio_client'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tj_portfolio_client'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tj_portfolio_client'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tj_portfolio_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tj_portfolio_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tj_portfolio_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tj_portfolio_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tj_video_embed_portfolio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tj_video_embed_portfolio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tj_video_embed_portfolio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tj_video_embed_portfolio'"
