-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webdesk_approval_dynamic_fields', 'customer_approval_plugin_version', 'webdesk_approval_version', 'ca_dynamic_fields', 'ca_approveReject', 'webdesk_approval_approveReject', 'ca_emailSent', 'webdesk_approval_emailSent');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('webdesk_approval_approveReject', 'webdesk_approval_emailSent', 'user_registration_fields', 'customer_group', 'nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('webdesk_approval_approveReject', 'webdesk_approval_emailSent', 'user_registration_fields', 'customer_group', 'nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('webdesk_approval_approveReject', 'webdesk_approval_emailSent', 'user_registration_fields', 'customer_group', 'nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('webdesk_approval_approveReject', 'webdesk_approval_emailSent', 'user_registration_fields', 'customer_group', 'nickname');

