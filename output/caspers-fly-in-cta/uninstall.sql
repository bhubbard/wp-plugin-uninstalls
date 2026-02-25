-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpcta-enabled', 'cpcta-display-on', 'cpcta-display-page', 'cpcta-display-post', 'cpcta-slider-type', 'cpcta-hori-slider-position', 'cpcta-zindex', 'cpcta-enable-autopop', 'cpcta-autopop-timer', 'cpcta-top-bar-text', 'cpcta-slider-body-content', 'cpcta-width-percent', 'cpcta-vert-slider-position', 'cpcta-top-bar-font-color', 'cpcta-top-bar-bkg-color', 'cpcta-body-content-font-color', 'cpcta-body-content-bkg-color', 'cpcta-mobile-hidden', 'cpcta-mobile-width', 'cpcta-hori-slider-topbar-angle', 'cpcta-width-pixel', 'cpcta-close-btn-color');

