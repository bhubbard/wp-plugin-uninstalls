-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edd_message_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('edd_user_order_thread', 'edd_user_order_rating', '_fes_edd_initial_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('edd_user_order_thread', 'edd_user_order_rating', '_fes_edd_initial_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('edd_user_order_thread', 'edd_user_order_rating', '_fes_edd_initial_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('edd_user_order_thread', 'edd_user_order_rating', '_fes_edd_initial_message');

