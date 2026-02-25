-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agmg_order_status_version_notice', 'agmg_order_status_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_agmg_order_status_mail_subject');
DELETE FROM wp_usermeta WHERE meta_key IN ('_agmg_order_status_mail_subject');
DELETE FROM wp_termmeta WHERE meta_key IN ('_agmg_order_status_mail_subject');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_agmg_order_status_mail_subject');

