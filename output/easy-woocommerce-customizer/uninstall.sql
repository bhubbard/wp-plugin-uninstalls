-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cs-framework-transient', 'cs-metabox-transient', 'cs-taxonomy-transient');
DELETE FROM wp_options WHERE option_name LIKE 'cs_term_%';

