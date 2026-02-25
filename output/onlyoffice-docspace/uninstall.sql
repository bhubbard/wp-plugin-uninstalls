-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oodsp_settings', 'oodsp_create_docspace_user_transient');

