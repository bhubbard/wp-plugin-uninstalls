-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'cs-framework-transient', 'cs-metabox-transient', 'cs-taxonomy-transient');
DELETE FROM wp_options WHERE option_name LIKE 'cs_term_%';
DELETE FROM wp_options WHERE option_name LIKE '%_agenda';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_custom_settings', '_dt_booking_person_services', '_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('_custom_settings', '_dt_booking_person_services', '_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('_custom_settings', '_dt_booking_person_services', '_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_custom_settings', '_dt_booking_person_services', '_info');

