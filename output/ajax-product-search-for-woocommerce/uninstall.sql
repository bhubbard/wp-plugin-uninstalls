-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('phoe_s_search_inp_label', 'phoe_s_search_sub_label', 'phoe_s_min_num_of_char', 'phoe_s_max_num_of_result', 'phoe_s_loader_image', 'phoe_s_search_field_placeholder', 'recently_activated', 'max_num_of_result', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product_search_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_search_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_search_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_search_ignore_notice');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

