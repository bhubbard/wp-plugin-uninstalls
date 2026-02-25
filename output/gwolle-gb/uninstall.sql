-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gwolle_gb-showSmilies', 'gwolle_gb-showLineBreaks', 'gwolle_gb-showEntryIcons', 'gwolle_gb-store_ip', 'gwolle_gb-entries_per_page', 'gwolle_gb-akismet-active', 'gwolle_gb-notifyByMail', 'gwolle_gb-require_login', 'gwolle_gb-labels_float', 'gwolle_gb-header', 'gwolle_gb-notice', 'gwolle_gb-form_ajax', 'gwolle_gb-form', 'gwolle_gb-entriesPerPage', 'gwolle_gb-excerpt_length', 'gwolle_gb-linkAuthorWebsite', 'gwolle_gb-admin_style', 'gwolle_gb-navigation', 'gwolle_gb-paginate_all', 'gwolle_gb-read', 'gwolle_gb-moderate-entries', 'gwolle_gb-refuse-spam', 'gwolle_gb-honeypot', 'gwolle_gb-nonce', 'gwolle_gb-longtext', 'gwolle_gb-linkchecker', 'gwolle_gb-timeout', 'gwolle_gb-sfs', 'gwolle_gb-antispam-question', 'gwolle_gb-antispam-answer', 'gwolle_gb_addon-moderation_keys', 'gwolle_gb-mail-from', 'gwolle_gb-notify-with-spam', 'gwolle_gb-adminMailContent', 'gwolle_gb-mail_author', 'gwolle_gb-authorMailContent', 'gwolle_gb-mail_author_moderation', 'gwolle_gb-authormoderationcontent', 'gwolle_gb-mail_admin_replyContent', 'gwolle_gb_version', 'gwolle_gb-access-level', 'gwolle_gb-checkForImport', 'gwolle_gb-post_ID', 'gwolle_gb-guestbookOnly', 'gwolle_gb-defaultMailText', 'gwolle_gb-recaptcha-active', 'gwolle_gb-cleantalk-active', 'gwolle_gb-honeypot_value', 'wordpress_api_key', 'disallowed_keys');
DELETE FROM wp_options WHERE option_name IN ('gwolle_gb_menu_counter');
DELETE FROM wp_options WHERE option_name LIKE 'gwolle_gb_check_key_%';
DELETE FROM wp_options WHERE option_name LIKE 'gwolle_gb_sfs_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gwolle_gb_book_id', 'gwolle_gb_read');
DELETE FROM wp_usermeta WHERE meta_key IN ('gwolle_gb_book_id', 'gwolle_gb_read');
DELETE FROM wp_termmeta WHERE meta_key IN ('gwolle_gb_book_id', 'gwolle_gb_read');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gwolle_gb_book_id', 'gwolle_gb_read');

