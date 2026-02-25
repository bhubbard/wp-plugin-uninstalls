-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('funnelcockpit_apikey_private', 'funnelcockpit_apikey_public', 'funnelcockpit_funnel_id', 'funnelcockpit_print_head');
DELETE FROM wp_options WHERE option_name LIKE '%_time';
DELETE FROM wp_options WHERE option_name LIKE '%_head';
DELETE FROM wp_options WHERE option_name LIKE '%_body';
DELETE FROM wp_options WHERE option_name LIKE '%_splitTestsEnabled';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('funnelpage_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('funnelpage_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('funnelpage_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('funnelpage_id');

