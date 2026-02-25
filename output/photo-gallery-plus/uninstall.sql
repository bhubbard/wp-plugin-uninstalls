-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('photo-gallery-plus-wizard-set-up', 'pgp_wpgeeks_site_id', 'active_sitewide_plugins', 'photo-gallery-plus-version-number', 'photo_gallery_plus_do_activation_redirect');

