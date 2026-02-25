-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpfwp-settings', 'BPFWP_Trial_Happening', 'bpfwp_custom_field_values', 'rewrite_rules', 'bpfwp-installation-time', 'bpfwp-permission-level', 'bpfwp-review-ask-time', 'bpfwp-getting-started', 'fsp-helper-notice-dismissed', 'bpfwp-ait-iat-plugin-notice-dismissed', 'bpfwp-admin-install-notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('geo_address', 'geo_latitude', 'geo_longitude', 'contact_post', 'ordering-link', 'contact_email', 'phone', 'clickphone', 'cell-phone', 'clickcellphone', 'whatsapp', 'whatsappdisplay', 'whatsapptext', 'fax', 'opening_hours', 'exceptions', 'disable_main_exceptions', 'custom_field_values', 'bpfwp-schema-data', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('geo_address', 'geo_latitude', 'geo_longitude', 'contact_post', 'ordering-link', 'contact_email', 'phone', 'clickphone', 'cell-phone', 'clickcellphone', 'whatsapp', 'whatsappdisplay', 'whatsapptext', 'fax', 'opening_hours', 'exceptions', 'disable_main_exceptions', 'custom_field_values', 'bpfwp-schema-data', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('geo_address', 'geo_latitude', 'geo_longitude', 'contact_post', 'ordering-link', 'contact_email', 'phone', 'clickphone', 'cell-phone', 'clickcellphone', 'whatsapp', 'whatsappdisplay', 'whatsapptext', 'fax', 'opening_hours', 'exceptions', 'disable_main_exceptions', 'custom_field_values', 'bpfwp-schema-data', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('geo_address', 'geo_latitude', 'geo_longitude', 'contact_post', 'ordering-link', 'contact_email', 'phone', 'clickphone', 'cell-phone', 'clickcellphone', 'whatsapp', 'whatsappdisplay', 'whatsapptext', 'fax', 'opening_hours', 'exceptions', 'disable_main_exceptions', 'custom_field_values', 'bpfwp-schema-data', 'rating');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'bpfwp_values_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'bpfwp_values_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'bpfwp_values_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bpfwp_values_%';

