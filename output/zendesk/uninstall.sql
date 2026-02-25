-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zendesk-settings', 'zendesk-settings-remote-auth');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zendesk_user_options', 'zendesk-ticket');
DELETE FROM wp_usermeta WHERE meta_key IN ('zendesk_user_options', 'zendesk-ticket');
DELETE FROM wp_termmeta WHERE meta_key IN ('zendesk_user_options', 'zendesk-ticket');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zendesk_user_options', 'zendesk-ticket');

