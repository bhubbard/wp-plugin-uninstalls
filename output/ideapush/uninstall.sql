-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('idea_push_settings', '_site_transient_update_plugins', 'ideapush-update', 'ideapush-tab-memory', 'northern_beaches_websites');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('votes', 'idea-attachment', 'ip_address', 'current-status', 'up-voters', 'ideaPushVotesRemaining', 'ideaPushImage');
DELETE FROM wp_usermeta WHERE meta_key IN ('votes', 'idea-attachment', 'ip_address', 'current-status', 'up-voters', 'ideaPushVotesRemaining', 'ideaPushImage');
DELETE FROM wp_termmeta WHERE meta_key IN ('votes', 'idea-attachment', 'ip_address', 'current-status', 'up-voters', 'ideaPushVotesRemaining', 'ideaPushImage');
DELETE FROM wp_commentmeta WHERE meta_key IN ('votes', 'idea-attachment', 'ip_address', 'current-status', 'up-voters', 'ideaPushVotesRemaining', 'ideaPushImage');

