-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contactformx_form', 'contactformx_email', 'contactformx_customize', 'contactformx_appearance', 'contactformx_advanced', 'cfx-dismiss-notice', 'contactformx_init');
DELETE FROM wp_options WHERE option_name LIKE 'contactformx_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('email', 'recipient', 'name', 'website', 'custom', 'refer', 'ip', 'host', 'agent', 'custom2', 'custom3', 'carbon', 'agree');
DELETE FROM wp_usermeta WHERE meta_key IN ('email', 'recipient', 'name', 'website', 'custom', 'refer', 'ip', 'host', 'agent', 'custom2', 'custom3', 'carbon', 'agree');
DELETE FROM wp_termmeta WHERE meta_key IN ('email', 'recipient', 'name', 'website', 'custom', 'refer', 'ip', 'host', 'agent', 'custom2', 'custom3', 'carbon', 'agree');
DELETE FROM wp_commentmeta WHERE meta_key IN ('email', 'recipient', 'name', 'website', 'custom', 'refer', 'ip', 'host', 'agent', 'custom2', 'custom3', 'carbon', 'agree');

