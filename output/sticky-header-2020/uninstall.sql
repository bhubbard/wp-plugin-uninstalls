-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sticky-header-2020-last-update', 'sticky-header-2020-styles', 'sticky-header-2020-scripts');
DELETE FROM wp_options WHERE option_name LIKE '%_actions_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_adons_notice';

