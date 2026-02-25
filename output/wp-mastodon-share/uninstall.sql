-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mastoshare-client-id', 'mastoshare-client-secret', 'mastoshare-token', 'mastoshare-instance', 'mastoshare-message', 'mastoshare-mode', 'mastoshare-toot-size', 'mastoshare-notice', 'mastoshare-content-warning');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mastoshare-toot', 'mastoshare-toot-thumbnail', 'mastoshare-post-status', 'mastoshareshare-lastSuccessfullTootURL');
DELETE FROM wp_usermeta WHERE meta_key IN ('mastoshare-toot', 'mastoshare-toot-thumbnail', 'mastoshare-post-status', 'mastoshareshare-lastSuccessfullTootURL');
DELETE FROM wp_termmeta WHERE meta_key IN ('mastoshare-toot', 'mastoshare-toot-thumbnail', 'mastoshare-post-status', 'mastoshareshare-lastSuccessfullTootURL');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mastoshare-toot', 'mastoshare-toot-thumbnail', 'mastoshare-post-status', 'mastoshareshare-lastSuccessfullTootURL');

