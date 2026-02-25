-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('business_forms_doliprospect_dolibarr_url', 'business_forms_doliprospect_api_key', 'business_forms_doliprospect_version', 'business_forms_doliprospect_default_status', 'business_forms_doliprospect_notification_email', 'business_forms_doliprospect_default_deal_status');

