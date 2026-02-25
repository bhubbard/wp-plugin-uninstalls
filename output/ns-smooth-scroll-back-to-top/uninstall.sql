-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('btta_reviews_installed_on', 'btta_total_open_count', 'ns_btta_font_awsome', 'ns_btta_position', 'ns_btta_background', 'ns_btta_text_color', 'ns_btta_border_color', 'ns_btta_background_hover', 'ns_btta_text_color_hover', 'ns_btta_border_color_hover', 'ns_btta_speed');
DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%';
DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_btta_reviews_dismissed_triggers', '_btta_reviews_last_dismissed', '_btta_reviews_already_did');
DELETE FROM wp_usermeta WHERE meta_key IN ('_btta_reviews_dismissed_triggers', '_btta_reviews_last_dismissed', '_btta_reviews_already_did');
DELETE FROM wp_termmeta WHERE meta_key IN ('_btta_reviews_dismissed_triggers', '_btta_reviews_last_dismissed', '_btta_reviews_already_did');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_btta_reviews_dismissed_triggers', '_btta_reviews_last_dismissed', '_btta_reviews_already_did');

