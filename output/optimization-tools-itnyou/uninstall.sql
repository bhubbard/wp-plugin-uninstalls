-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enable_404_on_not_exists_pagination', 'enable_yoast_organization_contacts', 'yoast_organization_phone', 'yoast_organization_email', 'enable_removing_typetext', 'enable_replacing_current_links');

