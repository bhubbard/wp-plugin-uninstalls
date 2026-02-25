-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apoyl-weixin-settings', 'apoyl_weixin_db_version');

