-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smaily_connect_flush_rewrite_rules', 'wpcf7', 'smaily_connect_plugin_updated', 'smaily_connect_cart_updated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('smaily_connect_user_language', 'icl_admin_language', 'smaily_connect_notice_dismissed', 'user_newsletter');
DELETE FROM wp_usermeta WHERE meta_key IN ('smaily_connect_user_language', 'icl_admin_language', 'smaily_connect_notice_dismissed', 'user_newsletter');
DELETE FROM wp_termmeta WHERE meta_key IN ('smaily_connect_user_language', 'icl_admin_language', 'smaily_connect_notice_dismissed', 'user_newsletter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('smaily_connect_user_language', 'icl_admin_language', 'smaily_connect_notice_dismissed', 'user_newsletter');

