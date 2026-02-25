-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woosg_settings', 'woosg_localization', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'woosg_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woosg_ids', 'woosg_including_main', 'woosg_show_atc', 'woosg_selector', 'woosg_custom_price', 'woosg_layout', 'woosg_before_text', 'woosg_after_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('woosg_ids', 'woosg_including_main', 'woosg_show_atc', 'woosg_selector', 'woosg_custom_price', 'woosg_layout', 'woosg_before_text', 'woosg_after_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('woosg_ids', 'woosg_including_main', 'woosg_show_atc', 'woosg_selector', 'woosg_custom_price', 'woosg_layout', 'woosg_before_text', 'woosg_after_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woosg_ids', 'woosg_including_main', 'woosg_show_atc', 'woosg_selector', 'woosg_custom_price', 'woosg_layout', 'woosg_before_text', 'woosg_after_text');

