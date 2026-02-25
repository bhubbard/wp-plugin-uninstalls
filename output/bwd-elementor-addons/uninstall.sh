#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bwdeb-plugin-meet-the-team'
wp option delete 'bwdeb-plugin-team-carousel'
wp option delete 'bwdeb-plugin-team-carousel2'
wp option delete 'bwdeb-plugin-testimonials'
wp option delete 'bwdeb-plugin-creative-button'
wp option delete 'bwdeb-plugin-accordion'
wp option delete 'bwdeb-plugin-masking-effect'
wp option delete 'bwdeb-plugin-service-showcase'
wp option delete 'bwdeb-plugin-promo-box'
wp option delete 'bwdeb-plugin-service-flip-box'
wp option delete 'bwdeb-plugin-step-flip-box'
wp option delete 'bwdeb-plugin-team-flip-box'
wp option delete 'bwdeb-plugin-creative-list'
wp option delete 'bwdeb-plugin-dual-heading'
wp option delete 'bwdeb-plugin-icon-box'
wp option delete 'bwdeb-plugin-dual-button'
wp option delete 'bwdeb-plugin-fancy-heading'
wp option delete 'bwdeb-plugin-animated-heading'
wp option delete 'bwdeb-plugin-animated-link'
wp option delete 'bwdeb-plugin-awesome-step'
wp option delete 'bwdeb-plugin-blockquote'
wp option delete 'bwdeb-plugin-business-hours'
wp option delete 'bwdeb-plugin-call-to-action'
wp option delete 'bwdeb-plugin-click-to-contact'
wp option delete 'bwdeb-plugin-countdown'
wp option delete 'bwdeb-plugin-counter'
wp option delete 'bwdeb-plugin-coupon-code'
wp option delete 'bwdeb-plugin-filterable-gallery'
wp option delete 'bwdeb-plugin-image-accordion'
wp option delete 'bwdeb-plugin-image-compare'
wp option delete 'bwdeb-plugin-image-hover-effect'
wp option delete 'bwdeb-plugin-image-scroll'
wp option delete 'bwdeb-plugin-image-shape'
wp option delete 'bwdeb-plugin-image-swap'
wp option delete 'bwdeb-plugin-pricing-table'
wp option delete 'bwdeb-plugin-progress-bar'
wp option delete 'bwdeb-plugin-timeline'
wp option delete 'bwdeb-plugin-social-icon'
wp option delete 'bwdeb-plugin-creative-tab'
wp option delete 'bwdeb-plugin-webinar-info'
wp option delete 'bwdeb-plugin-unique-headers'
wp option delete 'bwdeb-plugin-photo-stack'
wp option delete 'bwdeb-plugin-image-stack-group'
wp option delete 'bwdeb-plugin-ihover'
wp option delete 'bwdeb-plugin-video-popup'
wp option delete 'bwdeb-plugin-profile-card'
wp option delete 'bwdeb-plugin-back-to-top'
wp option delete 'bwdeb-plugin-masking-video'
wp option delete 'bwdeb-plugin-logo-carousel'
wp option delete 'bwdeb-plugin-logo-grid'
wp option delete 'bwdeb-plugin-logo-filter'
wp option delete 'bwdeb-plugin-map-masking'
wp option delete 'bwdeb-plugin-author-bio'
wp option delete 'bwdeb-plugin-data-table'
wp option delete 'bwdeb-plugin-effective-pre-loader'
wp option delete 'bwdeb-plugin-social-share'
wp option delete 'bwdeb-plugin-breadcrumb'
wp option delete 'bwdeb-plugin-background-switcher'
wp option delete 'bwdeb-plugin-unfold'
wp option delete 'bwdeb-plugin-code-highlighter'
wp option delete 'bwdeb-plugin-single-post-slider'
wp option delete 'bwdeb-plugin-post-timeline'
wp option delete 'bwdeb-plugin-circle-info'
wp option delete 'bwdeb-plugin-product-category-carousel'
wp option delete 'bwdeb-plugin-flip-box-carousel'
wp option delete 'bwdeb-plugin-info-download-button'
wp option delete 'bwdeb-plugin-post-grid'
wp option delete 'bwdeb-plugin-post-accordion'
wp option delete 'bwdeb-plugin-post-image-accordion'
wp option delete 'bwdeb-plugin-post-list'
wp option delete 'bwdeb-plugin-post-tiles'
wp option delete 'bwdeb-plugin-news-ticker'
wp option delete 'bwdeb-plugin-masonary-blog-post'
wp option delete 'bwdeb-plugin-product-grid'
wp option delete 'bwdeb-plugin-product-image-accordion'
wp option delete 'bwdeb-plugin-featured-product'
wp option delete 'bwdeb-plugin-related-product'
wp option delete 'bwdeb-plugin-product-tiles'
wp option delete 'bwdeb-plugin-product-accordion'
wp option delete 'bwdeb-plugin-product-category-tiles'
wp option delete 'bwdeb-plugin-product-list'
wp option delete 'bwdeb-plugin-product-carousel'
wp option delete 'bwdeb-plugin-product-list-carousel'
wp option delete 'bwdeb-plugin-product-category-grid'
wp option delete 'bwdeb-plugin-product-timeline'
wp option delete 'bwdeb-plugin-content-switcher'
wp option delete 'bwdeb-plugin-ajax-data-table'
wp option delete 'bwdeb-header-builder'
wp option delete 'bwdeb-footer-builder'
wp option delete 'bwdeb-product-single'
wp option delete 'bwdeb-product-shop'
wp option delete 'bwdeb-product-archive'
wp option delete 'bwdeb-product-cart'
wp option delete 'bwdeb-product-checkout'
wp option delete 'bwdeb-post-single'
wp option delete 'bwdeb-post-archive'
wp option delete 'bwdeb-thankyou'
wp option delete 'bwdeb-my-account'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bwdeb-check-hero-widget%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
