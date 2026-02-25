-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agilecrm_cf7_domain', 'agilecrm_cf7_admin_email', 'agilecrm_cf7_api_key', 'agilecrm_cf7_form_map', 'agilecrm_cf7_contact_fields', 'agilecrm_cf7_mapped_forms');

