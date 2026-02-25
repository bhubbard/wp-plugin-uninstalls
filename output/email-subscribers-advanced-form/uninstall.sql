-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('es_af_pluginversion', 'esaf_gdpr_consent_notify_group_selector', 'ig_es_optintype', 'ig_es_welcomeemail', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_group_selector';

