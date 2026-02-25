-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twosides_admin', 'twosides_docs', 'twosides_debate_date_plugin_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('twosides_commtype');
DELETE FROM wp_usermeta WHERE meta_key IN ('twosides_commtype');
DELETE FROM wp_termmeta WHERE meta_key IN ('twosides_commtype');
DELETE FROM wp_commentmeta WHERE meta_key IN ('twosides_commtype');

