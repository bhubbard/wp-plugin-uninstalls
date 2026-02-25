-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lifterlms_set_version_option', 'lifterlms_copecart_disable_order_checkout', 'lifterlms_copecart_enabled', 'llms_copecart_lists');
DELETE FROM wp_options WHERE option_name LIKE 'lifterlms_copecart_temp_pass_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('llms_user_trial', '_copecart_meta_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('llms_user_trial', '_copecart_meta_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('llms_user_trial', '_copecart_meta_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('llms_user_trial', '_copecart_meta_key');

