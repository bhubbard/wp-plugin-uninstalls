-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crmfwc-users-roles', 'crmfwc-email', 'crmfwc-passw', 'wcexd_company_invoice', 'wcexd_private_invoice', 'wcefr_company_invoice', 'wcefr_private_invoice', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('crmfwc-id');
DELETE FROM wp_usermeta WHERE meta_key IN ('crmfwc-id');
DELETE FROM wp_termmeta WHERE meta_key IN ('crmfwc-id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('crmfwc-id');

