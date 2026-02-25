-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('client_partner_default_Settings_new');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('client_partner_Settings', 'nkcps_client_partner_data', 'nkcps_client_partner_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('client_partner_Settings', 'nkcps_client_partner_data', 'nkcps_client_partner_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('client_partner_Settings', 'nkcps_client_partner_data', 'nkcps_client_partner_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('client_partner_Settings', 'nkcps_client_partner_data', 'nkcps_client_partner_count');

