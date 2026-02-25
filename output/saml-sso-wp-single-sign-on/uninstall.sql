-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kwsso_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kwsso_user_type', 'kwsso_user_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('kwsso_user_type', 'kwsso_user_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('kwsso_user_type', 'kwsso_user_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kwsso_user_type', 'kwsso_user_attributes');

