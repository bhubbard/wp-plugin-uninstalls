-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('piotnet-addons-for-elementor-pro-username', 'piotnet-addons-for-elementor-pro-password', '_site_transient_update_plugins', 'pafe-features-posts-list', 'piotnet_addons_for_elementor_do_activation_redirect', 'pafe-features-before-after-image-comparison-slider', 'pafe-features-switch-content', 'pafe-features-video-playlist', 'pafe-features-vertical-timeline', 'pafe-features-image-accordion', 'pafe-features-sales-pop', 'pafe-features-countdown-cart', 'pafe-features-dual-color-headline', 'pafe-features-hotspot', 'pafe-features-progressbar', 'pafe-features-table', 'pafe-features-image-carousel-multiple-custom-urls', 'pafe-features-gradient-text', 'pafe-features-gradient-button', 'pafe-features-tooltip', 'pafe-features-form-style', 'pafe-features-particles');

