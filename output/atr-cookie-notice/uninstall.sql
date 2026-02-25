-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atr_cookie_notice_activation_time', 'atr_cookie_notice_dismiss_review');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('atr_cookie_notice_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('atr_cookie_notice_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('atr_cookie_notice_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('atr_cookie_notice_notice_dismissed');

