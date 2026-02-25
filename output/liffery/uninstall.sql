-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('liffery_option_domain_validated', 'liffery_option_domain_validated_date');

