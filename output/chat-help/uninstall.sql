-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chat_help_version', 'chat_help_first_version', 'chat_help_activation_date', 'chat_help_db_version', 'cwp_option', 'chat_help_review_notice_dismiss', 'ch_wooCommerce', 'ch_settings', 'themeatelier_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'themeatelier_offer_banner_dismissed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_CHAT_HELP_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_CHAT_HELP_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_CHAT_HELP_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_CHAT_HELP_errors_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_chat_help_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_chat_help_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_chat_help_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_chat_help_errors_%';

