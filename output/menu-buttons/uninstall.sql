-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mb-button-id1', 'mb-color1', 'mb-hover1', 'mb-text1', 'mb-button-id2', 'mb-color2', 'mb-hover2', 'mb-text2', 'mb-width1', 'mb-width2', 'mb-height1', 'mb-height2', 'mb-radius1', 'mb-radius2');

