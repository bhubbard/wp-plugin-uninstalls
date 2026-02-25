-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_multusre_email_new_user', '_multusre_email_existing_user', '_multusre_debug_logging');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_multusre_user_processed', '_multusre_flag_new_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('_multusre_user_processed', '_multusre_flag_new_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('_multusre_user_processed', '_multusre_flag_new_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_multusre_user_processed', '_multusre_flag_new_user');

