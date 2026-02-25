-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cnt-template-page-id', 'cnt-header-img', 'cnt-ads1-img', 'cnt-ads1-link', 'cnt-ads2-img', 'cnt-ads2-link', 'cnt-social-img', 'cnt-social-link', 'cnt-todays-featured-title', 'cnt-featured-articles-title', 'cnt-footer-content', 'cnt-footer-bgcolor', 'cnt-link-color', 'cnt-font-color', 'cnt-font-color-date', 'cnt-read-more-text', 'cnt-background-repeat', 'cnt-background-color', 'cnt-favicon', 'cnt-page-title', 'cnt-featured-articles-post-count', 'cnt-sidebar-post-count', 'cnt-bg-img', 'cnt-sidebar-img');

