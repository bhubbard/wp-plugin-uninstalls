-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autopostToMastodon-client-id', 'autopostToMastodon-client-secret', 'autopostToMastodon-token', 'autopostToMastodon-instance', 'autopostToMastodon-notice', 'autopostToMastodon-message', 'autopostToMastodon-mode', 'autopostToMastodon-toot-size', 'autopostToMastodon-postOnStandard', 'autopostToMastodon-catsAsTags', 'autopostToMastodon-content-warning');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('autopostToMastodon-post-status', 'autopostToMastodonshare-lastSuccessfullTootURL', 'autopostToMastodon-toot', 'autopostToMastodon-toot-thumbnail');
DELETE FROM wp_usermeta WHERE meta_key IN ('autopostToMastodon-post-status', 'autopostToMastodonshare-lastSuccessfullTootURL', 'autopostToMastodon-toot', 'autopostToMastodon-toot-thumbnail');
DELETE FROM wp_termmeta WHERE meta_key IN ('autopostToMastodon-post-status', 'autopostToMastodonshare-lastSuccessfullTootURL', 'autopostToMastodon-toot', 'autopostToMastodon-toot-thumbnail');
DELETE FROM wp_commentmeta WHERE meta_key IN ('autopostToMastodon-post-status', 'autopostToMastodonshare-lastSuccessfullTootURL', 'autopostToMastodon-toot', 'autopostToMastodon-toot-thumbnail');

