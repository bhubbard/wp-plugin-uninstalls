-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('infocob_crm_forms_settings', 'infocob_db_version', 'INFOCOB_CRM_FORMS_UPGRADE_VERSION');

