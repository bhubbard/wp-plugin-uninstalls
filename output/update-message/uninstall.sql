-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SL_framework_options', 'plugin_error_on_activation');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('update_message_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('update_message_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('update_message_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('update_message_text');

