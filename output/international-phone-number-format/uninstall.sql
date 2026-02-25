-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ipnfp_intl_phone_number_format_active', 'ipnfp_intl_phone_number_format_lookup_active', 'ipnfp_intl_phone_number_format_lookup_ttl', 'ipnfp_intl_phone_number_format_keys');

