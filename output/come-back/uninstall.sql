-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('come_back_activation_date', 'come_back_email_subject', 'come-back-email-editor', 'come_back_email_background_color', 'come_back_inactivity_period', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('come_back_email_sent', 'last_login', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('come_back_email_sent', 'last_login', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('come_back_email_sent', 'last_login', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('come_back_email_sent', 'last_login', 'first_name', 'last_name');

