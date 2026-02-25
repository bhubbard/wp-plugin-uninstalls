-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zeno_report_post-show_ip_to_client', 'zeno_report_post-show_on_blog', 'zeno_report_post-add_what', 'zeno_report_post-msg_min_length', 'zeno_report_post-require_login', 'zeno_report_post-spamfilter', 'zeno_report_post-subscribed_notification', 'zeno_report_post-email_notification', 'zeno_report_post-email_address', 'zeno_report_post-email_subject', 'zeno_report_post-email_body', 'zeno_report_post-post_types', 'disallowed_keys');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_zeno_report_post', '_zeno_report_post_moderated');
DELETE FROM wp_usermeta WHERE meta_key IN ('_zeno_report_post', '_zeno_report_post_moderated');
DELETE FROM wp_termmeta WHERE meta_key IN ('_zeno_report_post', '_zeno_report_post_moderated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_zeno_report_post', '_zeno_report_post_moderated');

