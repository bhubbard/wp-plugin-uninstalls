-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wprne_settings', 'wprne_license_data', 'wprne_send_post_pushnotif', 'wprne_push_notif_token', 'wprne_pages', 'wprne_templates', 'wprne_apps');
DELETE FROM wp_options WHERE option_name LIKE 'wprne_pages_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wprne_push_notif_sent', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('wprne_push_notif_sent', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('wprne_push_notif_sent', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wprne_push_notif_sent', '_wp_page_template');

