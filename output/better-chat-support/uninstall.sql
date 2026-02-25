-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('better_chat_support_version', 'better_chat_support_first_version', 'better_chat_support_activation_date', 'better_chat_support_db_version', 'better_chat_support_review_notice_dismiss', 'mcs-opt', 'themeatelier_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'themeatelier_offer_banner_dismissed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_BetterChatSupport_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_BetterChatSupport_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_BetterChatSupport_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_BetterChatSupport_errors_%';

