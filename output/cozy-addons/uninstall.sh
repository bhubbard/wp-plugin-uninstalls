#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cozy_dashboard_dismissed_notice'
wp option delete 'cozy_addons_block_theme'
wp option delete 'cozy-block--accordion'
wp option delete 'cozy-block--advanced-gallery'
wp option delete 'cozy-block--mega-menu'
wp option delete 'cozy-block--advanced-tab'
wp option delete 'cozy-block--back-to-top'
wp option delete 'cozy-block--breadcrumb'
wp option delete 'cozy-block--button'
wp option delete 'cozy-block--cf7-styler'
wp option delete 'cozy-block--container'
wp option delete 'cozy-block--countdown-timer'
wp option delete 'cozy-block--counter'
wp option delete 'cozy-block--cta'
wp option delete 'cozy-block--current-time'
wp option delete 'cozy-block--featured-content-box'
wp option delete 'cozy-block--icon-list'
wp option delete 'cozy-block--icon-picker'
wp option delete 'cozy-block--img-compare'
wp option delete 'cozy-block--modal'
wp option delete 'cozy-block--portfolio-gallery'
wp option delete 'cozy-block--pricing-table'
wp option delete 'cozy-block--progress-bar'
wp option delete 'cozy-block--sidebar-panel'
wp option delete 'cozy-block--slider'
wp option delete 'cozy-block--social-icon'
wp option delete 'cozy-block--social-share'
wp option delete 'cozy-block--teams'
wp option delete 'cozy-block--testimonial'
wp option delete 'cozy-block--toggle-content'
wp option delete 'cozy-block--ad'
wp option delete 'cozy-block--advanced-categories'
wp option delete 'cozy-block--categorized-post-tabs'
wp option delete 'cozy-block--featured-post'
wp option delete 'cozy-block--featured-post-tabs'
wp option delete 'cozy-block--magazine-grid'
wp option delete 'cozy-block--magazine-list'
wp option delete 'cozy-block--news-ticker'
wp option delete 'cozy-block--popular-post'
wp option delete 'cozy-block--post-carousel'
wp option delete 'cozy-block--post-comments'
wp option delete 'cozy-block--post-slider'
wp option delete 'cozy-block--post-views'
wp option delete 'cozy-block--related-post'
wp option delete 'cozy-block--trending-post'
wp option delete 'cozy-block--add-to-cart'
wp option delete 'cozy-block--featured-product'
wp option delete 'cozy-block--featured-product-tabs'
wp option delete 'cozy-block--product-category'
wp option delete 'cozy-block--product-carousel'
wp option delete 'cozy-block--product-review'
wp option delete 'cozy-block--product-slider'
wp option delete 'cozy-block--product-tab'
wp option delete 'cozy-block--quick-view'
wp option delete 'cozy-block--wishlist'
wp option delete 'ca-cpt--mega-menu-templates'
wp option delete 'ca-cpt--portfolio-gallery-templates'
wp option delete 'ca--utility--animation'
wp option delete 'ca--utility--styles'
wp option delete 'ca--utility--pattern-library'
wp option delete 'woocommerce_currency_pos'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ca--utility--%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cozy-block--%'"

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'reset_trending_post_views_count_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cozy_block_wishlist_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cozy_block_wishlist_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cozy_block_wishlist_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cozy_block_wishlist_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ca_portfolio_gallery_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ca_portfolio_gallery_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ca_portfolio_gallery_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ca_portfolio_gallery_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ca_portfolio_gallery_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ca_portfolio_gallery_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ca_portfolio_gallery_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ca_portfolio_gallery_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cozy_post_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cozy_post_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cozy_post_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cozy_post_views_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ca_portfolio_gallery_project_year'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ca_portfolio_gallery_project_year'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ca_portfolio_gallery_project_year'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ca_portfolio_gallery_project_year'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ca_portfolio_gallery_client'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ca_portfolio_gallery_client'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ca_portfolio_gallery_client'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ca_portfolio_gallery_client'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ca_portfolio_gallery_skills'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ca_portfolio_gallery_skills'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ca_portfolio_gallery_skills'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ca_portfolio_gallery_skills'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cozy_trending_post_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cozy_trending_post_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cozy_trending_post_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cozy_trending_post_views'"
