-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('content-slider-main-heading-color', 'content-slider-normal-font-color', 'content-slider-active-slide-title-color', 'content-slider-selected-slide-bgcolor', 'content-slider-selected-slide-bordercolor', 'content-slider-active-slide-bgcolor');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('content_slider_url', 'content_slider_url_target');
DELETE FROM wp_usermeta WHERE meta_key IN ('content_slider_url', 'content_slider_url_target');
DELETE FROM wp_termmeta WHERE meta_key IN ('content_slider_url', 'content_slider_url_target');
DELETE FROM wp_commentmeta WHERE meta_key IN ('content_slider_url', 'content_slider_url_target');

