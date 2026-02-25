-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woosv_enable', 'woosv_hide_parent', 'woosv_hide_parent_exclude', 'woosv_settings', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'woosv_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woosv_enable', 'woosv_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('woosv_enable', 'woosv_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('woosv_enable', 'woosv_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woosv_enable', 'woosv_name');

