-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_fluent_last_m_run', '_fs_migrate_awesome_support', '_fs_migrate_freshdesk', '_fs_migrate_helpscout', '_fs_migrate_js_helpdesk', '_fs_migrate_support_candy', '_fs_migrate_zendesk', 'siteUrl', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp-last-login', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp-last-login', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp-last-login', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp-last-login', '_wp_attachment_image_alt');

