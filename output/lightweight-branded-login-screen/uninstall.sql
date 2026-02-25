-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lbls_logo', 'lbls_background_color', 'lbls_background', 'lbls_background_opacity', 'lbls_title', 'lbls_link');

