-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('option_add_css', 'options_add_css_class', 'option_image_size', 'option_image_class', 'EP_MFCI_option');

