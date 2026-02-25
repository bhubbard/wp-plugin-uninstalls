-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('codechief_roles', 'codechief_profile', 'codecheif_contact', 'codechief_auto_update', 'codecheif_options', 'codecheif_email_options');

