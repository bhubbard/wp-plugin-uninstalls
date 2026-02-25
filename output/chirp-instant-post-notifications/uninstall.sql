-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chirpipn_remove_unsubscribed_user', 'chirpipn_email_subject', 'chirpipn_email_template', 'chirpipn_email_footer', 'chirpipn_name_label', 'chirpipn_name_placeholder', 'chirpipn_email_placeholder', 'chirpipn_submit_button_text', 'chirpipn_email_label');
DELETE FROM wp_options WHERE option_name LIKE 'chirpipn_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('chirpipn_subscribed');
DELETE FROM wp_usermeta WHERE meta_key IN ('chirpipn_subscribed');
DELETE FROM wp_termmeta WHERE meta_key IN ('chirpipn_subscribed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('chirpipn_subscribed');

