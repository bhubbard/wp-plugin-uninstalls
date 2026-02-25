-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kmithi-fld-enable', 'kmithi-fld-enable-template-type', 'kmithi-fld-avoid-for-user-roles', 'kmithi-fld-message', 'kmithi-fld-displaytooptions', 'kmithi-fld-pages');

