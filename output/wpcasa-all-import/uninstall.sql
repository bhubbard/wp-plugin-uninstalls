-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcasa');
DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('company', 'phone', 'description', 'twitter', 'facebook', 'agent_logo', 'agent_logo_id', '_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('company', 'phone', 'description', 'twitter', 'facebook', 'agent_logo', 'agent_logo_id', '_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('company', 'phone', 'description', 'twitter', 'facebook', 'agent_logo', 'agent_logo_id', '_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('company', 'phone', 'description', 'twitter', 'facebook', 'agent_logo', 'agent_logo_id', '_gallery');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';

