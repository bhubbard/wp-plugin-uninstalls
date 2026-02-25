-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alv_settings_positions', 'alv_settings_tooltip_pos', 'alv_settings_hide_emt_terms', 'alv_settings_exl_hidden_product', 'alv_settings_exl_unpurcha_product', 'alv_settings_link_individual_product', 'alv_settings_use_unfollow_links', 'dsalv_db_version', '_welcome_screen_activation_redirect_ds_advanced_linked_variations');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dsalv_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('dsalv_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('dsalv_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dsalv_link');

