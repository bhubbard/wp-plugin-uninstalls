-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('background-image-field-like', 'background-image-field-dislike', 'plb_background-image-field-like', 'plb_background-image-field-dislike', 'plb_your_style_css');

