-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('remind_me_later_bosa_pro_time', 'keon_toolset_demo_lists', 'keon_toolset_theme_state_list', 'keon_toolset_bosa_common_demo_lists', 'keon_toolset_template_lists', 'keon_toolset_template_state_list', 'imported_option', 'options.json', 'imported_post_ids', 'kt_adim_imported_post_ids');
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';
DELETE FROM wp_options WHERE option_name LIKE 'upgrade_bosa_pro_notice_dismiss_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismiss_gutener_upsell_notice', 'store_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismiss_gutener_upsell_notice', 'store_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismiss_gutener_upsell_notice', 'store_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismiss_gutener_upsell_notice', 'store_notice_dismissed');

