-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apprl_version', 'apprl_activation_date', 'apprl_cron_running', 'apprl_token', 'apprl_error', 'apprl__auto_transform', 'apprl__auto_span', 'apprl__auto_transform_optout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('apprl__auto_transform_optout', 'apprl__links');
DELETE FROM wp_usermeta WHERE meta_key IN ('apprl__auto_transform_optout', 'apprl__links');
DELETE FROM wp_termmeta WHERE meta_key IN ('apprl__auto_transform_optout', 'apprl__links');
DELETE FROM wp_commentmeta WHERE meta_key IN ('apprl__auto_transform_optout', 'apprl__links');

