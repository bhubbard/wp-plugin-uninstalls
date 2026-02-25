-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('glueup_login_restrict_site', 'glueup_login_private_key', 'glueup_login_public_key', 'glueup_login_org_name', 'glueup_login_delete_on_uninstall', 'glueup_login_allowed_statuses');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('glueup_member_id', 'glueup_company_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('glueup_member_id', 'glueup_company_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('glueup_member_id', 'glueup_company_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('glueup_member_id', 'glueup_company_name');

