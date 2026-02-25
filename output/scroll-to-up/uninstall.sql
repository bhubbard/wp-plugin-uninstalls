-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf-taxonomy-transient');
DELETE FROM wp_options WHERE option_name LIKE '%_installed';
DELETE FROM wp_options WHERE option_name LIKE 'csf_term_%';

