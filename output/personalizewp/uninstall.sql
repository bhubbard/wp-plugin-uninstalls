-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pwp_pending_onboarding', 'pwp_admin_onboarding_dismissed', 'personalizewp_onboarding', 'pwp_onboarding', 'pwp_admin_notices', 'pwp_flash_messages', 'personalizewp_editor_role_values', 'dxp_newsletter_signup', 'pwp_admin_dashboard_message', 'pwp_admin_onboarding_message', '_pwp_pro_db', 'personalizewp_license_key', 'personalizewp_license', 'personalizewp_license_status', 'personalisewp_license_notice', 'pwp_editor_role_values', 'pwp_installing');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_export_contact_ids', 'edit_pwp_export_requests_per_page', 'pwp_newsletter_signup');
DELETE FROM wp_usermeta WHERE meta_key IN ('_export_contact_ids', 'edit_pwp_export_requests_per_page', 'pwp_newsletter_signup');
DELETE FROM wp_termmeta WHERE meta_key IN ('_export_contact_ids', 'edit_pwp_export_requests_per_page', 'pwp_newsletter_signup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_export_contact_ids', 'edit_pwp_export_requests_per_page', 'pwp_newsletter_signup');

