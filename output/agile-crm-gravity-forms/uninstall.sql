-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agilecrm_gf_domain', 'agilecrm_gf_admin_email', 'agilecrm_gf_api_key', 'agilecrm_gf_form_map', 'agilecrm_gf_contact_fields', 'agilecrm_gf_mapped_forms');

