-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('u2mc-api_key', 'u2mc-list', 'u2mc-group', 'u2mc-subgroup', 'u2mc-use_roles', 'u2mc-needconfirm', 'u2mc-accept');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('u2mc_mailchimp');
DELETE FROM wp_usermeta WHERE meta_key IN ('u2mc_mailchimp');
DELETE FROM wp_termmeta WHERE meta_key IN ('u2mc_mailchimp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('u2mc_mailchimp');

