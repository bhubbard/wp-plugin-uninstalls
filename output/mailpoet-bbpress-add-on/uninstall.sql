-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailpoet_bbpress_subscribe_too', 'mailpoet_bbpress_addon_version', 'mailpoet_bbpress_addon_db_version', '_mailpoet_bbpress_addon_needs_update', '_bbp_mailpoet_lists', '_bbp_enable_mailpoet_checkbox_on_registration', '_bbp_mailpoet_checkbox_label', '_bbp_precheck_mailpoet_checkbox');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bbpress_user_subscribe_to_mailpoet');
DELETE FROM wp_usermeta WHERE meta_key IN ('bbpress_user_subscribe_to_mailpoet');
DELETE FROM wp_termmeta WHERE meta_key IN ('bbpress_user_subscribe_to_mailpoet');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bbpress_user_subscribe_to_mailpoet');

