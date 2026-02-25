-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pgem_smtp_host', 'pgem_smtp_port', 'pgem_smtp_encryption_type', 'pgem_smtp_authentication', 'pgem_smtp_username', 'pgem_smtp_password', 'pgem_smtp_from_email', 'pgem_smtp_from_name', 'pgem-message', 'pgem-error');

