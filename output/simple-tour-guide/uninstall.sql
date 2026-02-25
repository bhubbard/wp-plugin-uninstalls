-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stg_tour', 'stg_settings', 'stg_colors', 'stg_steps');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('stg_banner_hide_new_admin_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('stg_banner_hide_new_admin_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('stg_banner_hide_new_admin_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('stg_banner_hide_new_admin_notice');

