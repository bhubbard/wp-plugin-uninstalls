-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('raise_donors_settings_option_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('raise_donors_data', 'raise_donors_format_full', 'raise_donors_format_form', 'raise_donors_campaign_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('raise_donors_data', 'raise_donors_format_full', 'raise_donors_format_form', 'raise_donors_campaign_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('raise_donors_data', 'raise_donors_format_full', 'raise_donors_format_form', 'raise_donors_campaign_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('raise_donors_data', 'raise_donors_format_full', 'raise_donors_format_form', 'raise_donors_campaign_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'raise_donors_format_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'raise_donors_format_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'raise_donors_format_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'raise_donors_format_%';

