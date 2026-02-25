-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ic_mailer_dragon_install', 'ic_mailer_settings', 'ic_mailer_custom', 'ic_mailers_published');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ic_subscription_confirmed', 'ic_mailer_contents', 'ic_mailer_custom', 'ic_mail_last_sent', 'ic_subscription_unsubscribed', 'ic_mailer', 'ic_mail_done');
DELETE FROM wp_usermeta WHERE meta_key IN ('ic_subscription_confirmed', 'ic_mailer_contents', 'ic_mailer_custom', 'ic_mail_last_sent', 'ic_subscription_unsubscribed', 'ic_mailer', 'ic_mail_done');
DELETE FROM wp_termmeta WHERE meta_key IN ('ic_subscription_confirmed', 'ic_mailer_contents', 'ic_mailer_custom', 'ic_mail_last_sent', 'ic_subscription_unsubscribed', 'ic_mailer', 'ic_mail_done');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ic_subscription_confirmed', 'ic_mailer_contents', 'ic_mailer_custom', 'ic_mail_last_sent', 'ic_subscription_unsubscribed', 'ic_mailer', 'ic_mail_done');

