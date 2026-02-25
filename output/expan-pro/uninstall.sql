-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('expanpro_token', 'expanpro_domain', 'expanpro_domain_name', 'expanpro_canonical', 'expanpro_showprice', 'expanpro_showjsonld', 'expanpro_email', 'expanpro_password');
DELETE FROM wp_options WHERE option_name LIKE 'expanpro-%';

