-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('business-block-widget-options');
DELETE FROM wp_options WHERE option_name LIKE 'business_block_%';

