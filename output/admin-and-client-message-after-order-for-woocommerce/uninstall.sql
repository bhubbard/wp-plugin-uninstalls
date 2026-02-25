-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooconvo_settings', 'wooconvo_migrated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wooconvo_thread', 'wooconvo_starred', 'is_starred', 'wooconvo_unread_vendor', 'wooconvo_unread_customer');
DELETE FROM wp_usermeta WHERE meta_key IN ('wooconvo_thread', 'wooconvo_starred', 'is_starred', 'wooconvo_unread_vendor', 'wooconvo_unread_customer');
DELETE FROM wp_termmeta WHERE meta_key IN ('wooconvo_thread', 'wooconvo_starred', 'is_starred', 'wooconvo_unread_vendor', 'wooconvo_unread_customer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wooconvo_thread', 'wooconvo_starred', 'is_starred', 'wooconvo_unread_vendor', 'wooconvo_unread_customer');

