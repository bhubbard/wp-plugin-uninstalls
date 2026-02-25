-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcb_review_prompt_removed', 'wpcb_review_prompt_delay', 'wp-call-button-settings', 'wpcb_review_prompt_delay');
DELETE FROM wp_options WHERE option_name LIKE '%_welcome';
DELETE FROM wp_options WHERE option_name LIKE '%-settings';
DELETE FROM wp_options WHERE option_name LIKE '%-widget-main-a';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_mail_smtp_pro_banner_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_mail_smtp_pro_banner_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_mail_smtp_pro_banner_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_mail_smtp_pro_banner_dismissed');

