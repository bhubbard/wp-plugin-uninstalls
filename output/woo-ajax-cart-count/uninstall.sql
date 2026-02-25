-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imsAjaxCartCount_optionIcon', 'imsAjaxCartCount_optionColor', 'imsAjaxCartCount_optionFontSize');

