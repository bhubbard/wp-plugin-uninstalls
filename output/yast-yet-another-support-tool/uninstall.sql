-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yast_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('assigned', 'priority', 'page', 'navigator', 'reporter', 'visibility', 'remote', 'server_ticket', 'spent_time', 'token');
DELETE FROM wp_usermeta WHERE meta_key IN ('assigned', 'priority', 'page', 'navigator', 'reporter', 'visibility', 'remote', 'server_ticket', 'spent_time', 'token');
DELETE FROM wp_termmeta WHERE meta_key IN ('assigned', 'priority', 'page', 'navigator', 'reporter', 'visibility', 'remote', 'server_ticket', 'spent_time', 'token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('assigned', 'priority', 'page', 'navigator', 'reporter', 'visibility', 'remote', 'server_ticket', 'spent_time', 'token');

