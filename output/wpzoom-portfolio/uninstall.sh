#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpzoom_portfolio_root'
wp option delete 'wpzoom_portfolio_base'
wp option delete 'default_portfolio'
wp option delete 'wpzoom-portfolio-settings'
wp option delete 'downloaded_font_files'

# Clear Cron Jobs
wp cron event delete 'delete_fonts_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpzb_portfolio_video_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpzb_portfolio_video_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpzb_portfolio_video_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpzb_portfolio_video_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpzb_portfolio_video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpzb_portfolio_video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpzb_portfolio_video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpzb_portfolio_video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpzb_portfolio_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpzb_portfolio_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpzb_portfolio_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpzb_portfolio_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpz_reorder_view_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpz_reorder_view_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpz_reorder_view_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpz_reorder_view_mode'"
