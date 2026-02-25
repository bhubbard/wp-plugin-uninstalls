-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tr-show-link', 'tr-css-head', 'tr-css-head-color', 'tr-css-font', 'tr-css-color', 'tr-css-border-style', 'tr-css-border-size', 'tr-css-border-color', 'tr-css-bg', 'tr-css-custom', 'tr-newsletter', 'tr-title-newsletter', 'tr-explain-newsletter', 'tr-confirm-newsletter', 'tr-button-newsletter', 'tr-subscriber', 'tr-tracking-adwords', 'tr-tracking-facebook', 'tr-tracking-other', 'tr-tracking-pixels', 'tr-adwords', 'tr-facebook', 'tr-youtube');

